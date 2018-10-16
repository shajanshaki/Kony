define(function() {
    var konyLoggerModule = require('com/konymp/listdetail/konyLogger');
    var konymp = {};
    konymp.logger = new konyLoggerModule("List Detail Component");
    return {
        /**
         * @function constructor
         * @private
         * @param {Object} baseConfig
         * @param {Object} layoutConfig
         * @param {Object} pspConfig
         */
        constructor: function(baseConfig, layoutConfig, pspConfig) {
            konymp.logger.trace("----------Entering constructor---------", konymp.logger.FUNCTION_ENTRY);
            this.SCREEN_DP = "320";
            this.SCREEN_HEIGHT_IN_DP = "548";
            this.startedAnimation = true;
            this.imageOriginalDP = "";
            this.imageAnimatedDP = "";
            this.translationX = "";
            this.translationY = "";
            this.prev = "";
            this._defaultProfile = "";
            this._defaultCover = "";
            this._defaultStatus = "";
            this._searchList = true;
            this._segClickFlag = 0;
            this.globalData = [];
            konymp.logger.trace("----------Exiting constructor ---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function initGettersSetters
         * @private
         */
        initGettersSetters: function() {
            konymp.logger.trace("----------Entering initGettersSetters Function---------", konymp.logger.FUNCTION_ENTRY);
            defineSetter(this, "searchList", function(value) {
                konymp.logger.trace("----------Entering searchList Setter---------", konymp.logger.FUNCTION_ENTRY);
                if (value === false) {
                    this.view.flxSearch.isVisible = false;
                    this.view.flxList.height = "90%";
                    this.view.flxHeader.height = "10%";
                    this.view.flxFilter.centerY = "50%";
                    this.view.flxMenu.centerY = "50%";
                    this.view.lblHeader.centerY = "50%";
                    this.view.flxList.top = "10%";
                    this._searchList = false;
                    this.view.forceLayout();
                    konymp.logger.trace("----------Exiting searchList Setter---------", konymp.logger.FUNCTION_EXIT);
                } else {
                    this._searchList = true;
                }
            });
            defineSetter(this, "defaultProfile", function(value) {
                konymp.logger.trace("----------Entering defaultProfile Setter---------", konymp.logger.FUNCTION_ENTRY);
                if (value.search(".png") != -1) {
                    this._defaultProfile = value;
                } else {
                    this._defaultProfile = value + ".png";
                }
                konymp.logger.trace("----------Exiting defaultProfile Setter---------", konymp.logger.FUNCTION_EXIT);
            });
            defineSetter(this, "defaultCover", function(value) {
                konymp.logger.trace("----------Entering defaultCover Setter---------", konymp.logger.FUNCTION_ENTRY);
                if (value.search(".png") != -1) {
                    this._defaultCover = value;
                } else {
                    this._defaultCover = value + ".png";
                }
                konymp.logger.trace("----------Exiting defaultCover Setter---------", konymp.logger.FUNCTION_EXIT);
            });
            defineSetter(this, "defaultStatus", function(value) {
                konymp.logger.trace("----------Entering defaultStatus Setter---------", konymp.logger.FUNCTION_ENTRY);
                this._defaultStatus = value;
                konymp.logger.trace("----------Exiting defaultStatus Getter---------", konymp.logger.FUNCTION_EXIT);
            });
            defineSetter(this, "hideHeader", function(value) {
                konymp.logger.trace("----------Entering hideHeader Setter---------", konymp.logger.FUNCTION_ENTRY);
                if (value == false) {
                    if (!this._searchList) {
                        this.view.flxList.top = "0%";
                        this.view.flxList.height = "100%";
                        this.view.flxHeader.isVisible = false;
                    } else {
                        this.view.flxSearch.isVisible = true;
                        this.view.flxHeader.height = "10%";
                        this.view.flxSearch.height = "50%";
                        this.view.flxSearch.centerY = "50%";
                        this.view.flxMenu.isVisible = false;
                        this.view.flxFilter.isVisible = false;
                        this.view.lblHeader.isVisible = false;
                        this.view.flxList.top = "10%";
                        this.view.flxList.height = "90%";
                        this.view.forceLayout();
                    }
                }
                konymp.logger.trace("----------Exiting hideHeader Getter---------", konymp.logger.FUNCTION_EXIT);
            });
        },
        /**
         * @function sortSectionData
         * @description Sorts array data provided (compared with key)
         * @private
         * @param {Object} array 
         * @param {string} key 
         * @return {Object} array
         */
        sortSectionData: function(array, key) {
            try {
                konymp.logger.trace("----------Entering sortSectionData Function---------", konymp.logger.FUNCTION_ENTRY);
                return array.sort(function(a, b) {
                    var x = a[key];
                    var y = b[key];
                    return ((x < y) ? -1 : ((x > y) ? 1 : 0));
                });
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting sortSectionData Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function fetchAllDetails
         * @description Service call to fetch All employee details
         * @private
         */
        fetchAllDetails: function() {
            try {
                konymp.logger.trace("----------Entering fetchAllDetails Function---------", konymp.logger.FUNCTION_ENTRY);
                var objectInstance = null;
                var sdkClient = new kony.sdk.getCurrentInstance();
                if (Object.keys(sdkClient).length !== 0) {
                    objectInstance = sdkClient.getObjectService("StorageObjectServices", {
                        "access": "online"
                    });
                }
                if (objectInstance === null || objectInstance === undefined) {
                    kony.application.dismissLoadingScreen();
                    konymp.logger.info("Authorization object null - Connect to MF");
                    alert("Please connect app to MF");
                    return;
                }
                var dataObject = new kony.sdk.dto.DataObject("getAllDetails");
                var options = {
                    "dataObject": dataObject,
                    "headers": {},
                    "queryParams": {}
                };
                kony.application.showLoadingScreen("", "Fetching Employees ...", constants.LOADING_SCREEN_POSITION_ONLY_CENTER, true, true, {});
                if (kony.net.isNetworkAvailable(constants.NETWORK_TYPE_ANY)) {
                    objectInstance.fetch(options, this.fetchAllDetailsSuccess.bind(this), this.fetchAllDetailsFailure.bind(this));
                } else {
                    kony.application.dismissLoadingScreen();
                    alert("No Network connected");
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting fetchAllDetails Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function fetchAllDetailsSuccess
         * @description Success Callback for fetchAllDetails
         * @private
         * @param {Object} response 
         * @callback fetchAllDetails
         */
        fetchAllDetailsSuccess: function(response) {
            try {
                konymp.logger.trace("----------Entering fetchAllDetailsSuccess Function---------", konymp.logger.FUNCTION_ENTRY);
                var myData = [];
                var dataSet = [];
                this.employee = response.records[0].Employee;
                this.designation = response.records[0].Designation;
                this.department = response.records[0].Department;
                this.contact = response.records[0].Contact;
                this.location = response.records[0].Location;
                this.media = response.records[0].Media;
                this.status = response.records[0].Status;
                for (var i = 0; i < this.employee.length; i++) {
                    for (var j = 0; j < this.department.length; j++) {
                        if (this.employee[i].Department_id == this.department[j].Department_id) {
                            var last_name = "";
                            if (this.employee[i].Last_name != undefined && this.employee[i].Last_name != null) {
                                last_name = this.employee[i].Last_name;
                            }
                            myData.push({
                                "name": this.employee[i].First_name + " " + last_name,
                                "department": this.department[j].Name,
                                "designation_id": this.employee[i].Designation_id,
                                "key": this.employee[i].First_name.charAt(0),
                                "employee_id": this.employee[i].Employee_id,
                                "manager_id": this.employee[i].Manager_id,
                                "location_id": this.employee[i].Location_id,
                                "status_id": this.employee[i].Status_id
                            });
                        }
                    }
                }
                for (var i = 0; i < myData.length; i++) {
                    for (var j = 0; j < this.designation.length; j++) {
                        if (myData[i].designation_id == this.designation[j].Designation_id) {
                            dataSet.push({
                                "name": myData[i].name,
                                "department": myData[i].department,
                                "designation": this.designation[j].Name,
                                "key": myData[i].key,
                                "employee_id": myData[i].employee_id,
                                "manager_id": myData[i].manager_id,
                                "location_id": myData[i].location_id,
                                "status_id": myData[i].status_id
                            });
                        }
                    }
                }
                myData = [];
                for (var i = 0; i < dataSet.length; i++) {
                    var profile_media_id = "";
                    var cover_media_id = "";
                    var profileURL = this._defaultProfile;
                    var coverURL = this._defaultCover;
                    for (var j = 0; j < this.media.length; j++) {
                        if (dataSet[i].employee_id == this.media[j].employee_id) {
                            if (this.media[j].Media_name == "profile") {
                                if (this.media[j].Url != null && this.media[j].Url != "") {
                                    profileURL = this.media[j].Url;
                                }
                                profile_media_id = this.media[j].Media_id;
                                continue;
                            } else if (this.media[j].Media_name == "cover") {
                                if (this.media[j].Url != null && this.media[j].Url != "") {
                                    coverURL = this.media[j].Url;
                                }
                                cover_media_id = this.media[j].Media_id;
                            }
                        }
                    }
                    myData.push({
                        "name": dataSet[i].name,
                        "department": dataSet[i].department,
                        "designation": dataSet[i].designation,
                        "key": dataSet[i].key,
                        "image": {
                            "src": profileURL
                        },
                        "employee_id": dataSet[i].employee_id,
                        "manager_id": dataSet[i].manager_id,
                        "location_id": dataSet[i].location_id,
                        "status_id": dataSet[i].status_id,
                        "profile_media_id": profile_media_id,
                        "cover_media_id": cover_media_id,
                        "coverSrc": coverURL
                    });
                }
                dataSet = [];
                for (var i = 0; i < this.status.length; i++) {
                    for (var j = 0; j < myData.length; j++) {
                        if (this.status[i].Status_id == myData[j].status_id) {
                            var skin;
                            if (this.status[i].Status_id == 1) {
                                skin = "sknAvailable";
                            } else if (this.status[i].Status_id == 2) {
                                skin = "sknAway";
                            } else {
                                skin = "sknMeeting";
                            }
                            dataSet.push({
                                "name": myData[j].name,
                                "department": myData[j].department,
                                "designation": myData[j].designation,
                                "image": myData[j].image,
                                "key": {
                                    "text": myData[j].key,
                                    "isVisible": this._defaultStatus,
                                    "skin": skin
                                },
                                "employee_id": myData[j].employee_id,
                                "manager_id": myData[j].manager_id,
                                "location_id": myData[j].location_id,
                                "profile_media_id": myData[j].profile_media_id,
                                "cover_media_id": myData[j].cover_media_id,
                                "coverSrc": myData[j].coverSrc
                            });
                        }
                    }
                }
                this.view.segEmployees.widgetDataMap = {
                    "empname": "name",
                    "designation": "designation",
                    "department": "department",
                    "empimage": "image",
                    "lblInvisible": "key"
                };
                kony.application.dismissLoadingScreen();
                myData = this.sortSectionData(dataSet, "name");
                this.view.segEmployees.setData(myData);
                this.view.segEmployees.isVisible = true;
                this.view.forceLayout();
                this.globalData = myData;
                this.noOfProfilePics = 0;
                this.profilePics = [];
                for (i = 0; i < this.media.length; i++) {
                    if (this.media[i].Media_name == "profile" && (this.media[i].Url == null || this.media[i].Url == "")) {
                        this.profilePics.push(this.media[i]);
                        this.noOfProfilePics++;
                    }
                }
                this.currentProfilePicCount = 0;
                if (this.noOfProfilePics > 0) {
                    this.fetchImageAndMap(this.currentProfilePicCount);
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting fetchAllDetailsSuccess Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function fetchAllDetailsFailure
         * @description Failure Callback for fetchAllDetails
         * @private
         * @param {Object} response 
         * @callback fetchAllDetails
         */
        fetchAllDetailsFailure: function(response) {
            try {
                konymp.logger.trace("----------Entering fetchAllDetailsFailure Function---------", konymp.logger.FUNCTION_ENTRY);
                kony.application.dismissLoadingScreen();
                alert("Service call failed" + JSON.stringify(response));
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting fetchAllDetailsFailure Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function fetchImageAndMap
         * @description Fetches image and maps to profile images in segment
         * @private
         * @param {int} id 
         */
        fetchImageAndMap: function(id) {
            try {
                konymp.logger.trace("----------Entering fetchImageAndMap Function---------", konymp.logger.FUNCTION_ENTRY);
                var integrationObj = new kony.sdk.getCurrentInstance().getIntegrationService("fetchImageService");
                var operationName = "getImage";
                var data = {
                    "Id": "" + this.profilePics[parseInt(id)].Media_id,
                    "fieldName": "Image",
                    "type": "bytes"
                };
                var headers = {
                    "Content-Type": "application/x-www-urlencoded",
                    "X-Kony-Authorization": kony.sdk.getCurrentInstance().currentClaimToken
                };
                integrationObj.invokeOperation(operationName, headers, data, this.fetchImageAndMapSuccess.bind(this), this.fetchImageAndMapFailure.bind(this));
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting fetchImageAndMap Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function fetchImageAndMapSuccess
         * @description Success callback for fetchImageAndMap
         * @private
         * @param {Object} response
         * @callback fetchImageAndMap 
         */
        fetchImageAndMapSuccess: function(response) {
            try {
                konymp.logger.trace("----------Entering fetchImageAndMapSuccess Function---------", konymp.logger.FUNCTION_ENTRY);
                this.setImageToWidget(this.profilePics[this.currentProfilePicCount].Media_id, response.data);
                this.currentProfilePicCount++;
                if (this.currentProfilePicCount == this.noOfProfilePics) {
                    return;
                } else {
                    this.fetchImageAndMap(this.currentProfilePicCount);
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting fetchImageAndMapSuccess Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function fetchImageAndMapFailure
         * @description Failure callback for fetchImageAndMap
         * @private
         * @param {Object} response
         * @callback fetchImageAndMap 
         */
        fetchImageAndMapFailure: function(response) {
            try {
                konymp.logger.trace("----------Entering fetchImageAndMapFailure Function---------", konymp.logger.FUNCTION_ENTRY);
                kony.print("Error fetching Images");
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting fetchImageAndMapFailure Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function setImageToWidget
         * @description maps image to segment 
         * @param {int} profilemedia_id 
         * @param {Object} data 
         * @private
         */
        setImageToWidget: function(profile_media_id, data) {
            try {
                konymp.logger.trace("----------Entering setImageToWidget Function---------", konymp.logger.FUNCTION_ENTRY);
                var segData = this.view.segEmployees.data;
                for (i = 0; i < segData.length; i++) {
                    if (segData[i].profile_media_id == profile_media_id && segData[i].profile_media_id != "") {
                        segData[i].image = {};
                        segData[i].image.base64 = data;
                        break;
                    }
                }
                this.globalData = segData;
                this.view.segEmployees.setData([]);
                this.view.segEmployees.setData(segData);
                this.view.forceLayout();
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting setImageToWidget Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function scrollSegmentToSelectedAlphabetIndex
         * @description Scrolls segment to selected alphabet
         * @private
         * @param {Object} alphabetClicked 
         */
        scrollSegmentToSelectedAlphabetIndex: function(alphabetClicked) {
            try {
                konymp.logger.trace("----------Entering scrollSegmentToSelectedAlphabetIndex Function---------", konymp.logger.FUNCTION_ENTRY);
                this.scrollEmployeeDetails(alphabetClicked.id);
                this.changeButtonSkin(null, alphabetClicked);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting scrollSegmentToSelectedAlphabetIndex Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function changeButtonSkin
         * @description changes button skin on click
         * @private
         * @param {string} key 
         */
        changeButtonSkin: function(key, btnClicked) {
            try {
                konymp.logger.trace("----------Entering changeButtonSkin Function---------", konymp.logger.FUNCTION_ENTRY);
                var buttons = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
                for (i = 0; i < 26; i++) {
                    var character = buttons.charAt(i);
                    this.view[character].skin = "Copysortbuttonskin3";
                }
                if (key != null && key != undefined) {
                    this.view[key].skin = "sknAssignBeforeAfter";
                    return;
                }
                if (btnClicked != null && btnClicked != undefined) {
                    btnClicked.skin = "sknAssignBeforeAfter";
                    return;
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting changeButtonSkin Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function getScrolledSection
         * @description gets the current scrolled section of employee listdetail
         * @private
         * @param {string} key 
         */
        getScrolledSection: function() {
            try {
                konymp.logger.trace("----------Entering getScrolledSection Function---------", konymp.logger.FUNCTION_ENTRY);
                var visibleSection = this.view.segEmployees.getFirstVisibleRow();
                var data = this.view.segEmployees.data;
                if (data !== null && data !== undefined && visibleSection.sectionIndex !== null) {
                    if (data[visibleSection.sectionIndex] !== null && data[visibleSection.sectionIndex] !== undefined) {
                        this.changeButtonSkin(data[visibleSection.sectionIndex].key, null);
                    }
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting getScrolledSection Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function onTouchStartOfTbxSearch
         * @description This function is invoked on click on search text box
         * @private
         */
        onTouchStartOfTbxSearch: function() {
            try {
                konymp.logger.trace("----------Entering onTouchStartOfTbxSearch Function---------", konymp.logger.FUNCTION_ENTRY);
                this.view.tbxSearch.width = "83%";
                this.view.flxSearchBg.width = "83%";
                this.view.lblSearchPlaceholder.setVisibility(false);
                this.view.lblNoSegmentDataFound.setVisibility(false);
                this.view.imgSearchCenter.setVisibility(false);
                this.view.imgSearchLeft.setVisibility(true);
                this.view.btnSearchCancel.setVisibility(true);
                this.view.forceLayout();
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting onTouchStartOfTbxSearch Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function onClickOfBtnCancelSearch
         * @description This function is invoked on click on cancel button on search text box
         * @private
         */
        onClickOfBtnCancelSearch: function() {
            try {
                konymp.logger.trace("----------Entering onClickOfBtnCancelSearch Function---------", konymp.logger.FUNCTION_ENTRY);
                this.view.tbxSearch.width = "100%";
                this.view.flxSearchBg.width = "100%";
                this.view.tbxSearch.text = null;
                this.view.lblSearchPlaceholder.setVisibility(true);
                this.view.imgSearchCenter.setVisibility(true);
                this.view.imgSearchLeft.setVisibility(false);
                this.view.btnSearchCancel.setVisibility(false);
                this.view.segEmployees.setVisibility(true);
                this.view.lblNoSegmentDataFound.setVisibility(false);
                this.view.flxDictionary.setVisibility(true);
                this.view.segEmployees.widgetDataMap = {
                    "empname": "name",
                    "designation": "designation",
                    "department": "department",
                    "empimage": "image",
                    "lblInvisible": "key"
                };
                this.view.segEmployees.setData(this.globalData);
                this.view.forceLayout();
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting onClickOfBtnCancelSearch Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function getSearchResult
         * @description Returns list of matched employees
         * @private
         * @param {Object} mData
         * @param {string} searchValue 
         * @returns {Object} sData
         */
        getSearchResult: function(mData, searchValue) {
            try {
                konymp.logger.trace("----------Entering getSearchResult Function---------", konymp.logger.FUNCTION_ENTRY);
                var i, j;
                var length = mData.length;
                var sData = [];
                for (var i = 0; i < length; i++) {
                    if (mData[i] != null || mData[i] != undefined) {
                        var txt1 = "",
                            txt2 = "";
                        if (mData[i].name !== null && mData[i].name !== undefined) {
                            txt1 = mData[i].name.toLocaleLowerCase();
                        }
                        if (mData[i].department !== null && mData[i].department !== undefined) {
                            txt2 = mData[i].department.toLocaleLowerCase();
                        }
                        var pattern = searchValue.toLocaleLowerCase();
                        if (txt1.search(pattern.trim()) !== -1 || txt2.search(pattern.trim()) !== -1) {
                            sData.push(mData[i]);
                            var dataLength = sData.length - 1;
                            sData[dataLength].lblSeperator = {
                                skin: "sknLblColor"
                            };
                        }
                    }
                }
                length = sData.length - 1;
                if (length >= 0) {
                    sData[length].lblSeperator = {
                        skin: "sknLblInvisible"
                    };
                }
                return sData;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting getSearchResult Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function onTextChangeAndDoneOfTbxSearch
         * @description this function is triggered when text is changed or done on click of search box
         * @private
         */
        onTextChangeAndDoneOfTbxSearch: function() {
            try {
                konymp.logger.trace("----------Entering onTextChangeAndDoneOfTbxSearch Function---------", konymp.logger.FUNCTION_ENTRY);
                var searchText = this.view.tbxSearch.text;
                this.view.imgSearchLeft.isVisible = true;
                if (this.view.tbxSearch.text !== null || this.view.tbxSearch.text.length !== 0) {
                    this.view.imgSearchCenter.isVisible = false;
                    this.view.lblSearchPlaceholder.isVisible = false;
                    this.view.forceLayout();
                } else {
                    this.view.imgSearchCenter.isVisible = true;
                    this.view.lblSearchPlaceholder.isVisible = true;
                    this.view.forceLayout();
                }
                this.view.lblNoSegmentDataFound.isVisible = false;
                this.view.forceLayout();
                if (searchText === "" || searchText.length === 0 || searchText === " ") {
                    this.view.lblNoSegmentDataFound.isVisible = false;
                    this.view.segEmployees.widgetDataMap = {
                        "empname": "name",
                        "designation": "designation",
                        "department": "department",
                        "empimage": "image",
                        "lblInvisible": "key"
                    };
                    this.view.segEmployees.setData(this.globalData);
                } else {
                    var Data = this.getSearchResult(this.globalData, searchText);
                    if (Data === null || Data.length === 0) {
                        this.view.segEmployees.setVisibility(false);
                        this.view.lblNoSegmentDataFound.isVisible = true;
                        this.view.forceLayout();
                    } else {
                        this.view.lblNoSegmentDataFound.isVisible = false;
                        this.view.forceLayout();
                        this.view.segEmployees.removeAll();
                        this.view.flxSeg.segEmployees.dockSectionHeaders = false;
                        this.view.flxDictionary.setVisibility(false);
                        this.view.segEmployees.setVisibility(true);
                        this.view.segEmployees.widgetDataMap = {
                            "empname": "name",
                            "designation": "designation",
                            "department": "department",
                            "empimage": "image",
                            "lblInvisible": "key"
                        };
                        this.view.segEmployees.setData(Data);
                        this.view.forceLayout();
                    }
                }
                this.view.forceLayout();
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting onTextChangeAndDoneOfTbxSearch Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function onRowClickOfSegEmployees
         * @description Data is populated on click of employee list
         * @private
         */
        onRowClickOfSegEmployees: function() {
            try {
                konymp.logger.trace("----------Entering onRowClickOfSegEmployees Function---------", konymp.logger.FUNCTION_ENTRY);
                var selectedRow = this.view.segEmployees.selectedItems[0];
                this.populateEmployeeDetails(selectedRow);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting onRowClickOfSegEmployees Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function onClickOfEmailFlex
         * @description Opens default email client on click on email icon in details screen
         * @private
         */
        onClickOfEmailFlex: function() {
            try {
                konymp.logger.trace("----------Entering onClickOfEmailFlex Function---------", konymp.logger.FUNCTION_ENTRY);
                var toRecepient = [this.view.lblEmailValue.text];
                kony.phone.openEmail(toRecepient, [], [], [], [], false, []);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting onClickOfEmailFlex Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function onClickOfCallFlex
         * @description Opens default call client on click on call icon in details screen
         * @private
         * @param {string} number
         */
        onClickOfCallFlex: function(number) {
            try {
                konymp.logger.trace("----------Entering onClickOfCallFlex Function---------", konymp.logger.FUNCTION_ENTRY);
                kony.phone.dial(number);
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting onClickOfCallFlex Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function userDetailsInit
         * @description init function for setting positions of widgets in details screen
         * @private
         */
        userDetailsInit: function() {
            try {
                konymp.logger.trace("----------Entering userDetailsInit Function---------", konymp.logger.FUNCTION_ENTRY);
                this.view.flxEmployeeName.top = '100%';
                this.view.flxEmployeeProfilePic.bottom = '-40%';
                this.view.flxWrapper.top = '120%';
                this.view.FlxBackGround.width = '130%';
                this.view.FlxBackGround.height = '130%';
                this.view.flxScrollDetails.top = '100%';
                this.view.flxScrollDetails.opacity = 0.3;
                this.view.flxShadowLine.isVisible = false;
                this.view.flxEmployeeProfilePic.isVisible = false;
                this.view.flxScrollDetails.isVisible = false;
                this.view.imgCover.src = this._defaultCover;
                if (this.view.segEmployees.selectedItems[0].coverSrc != null && this.view.segEmployees.selectedItems[0].coverSrc != "" && this.view.segEmployees.selectedItems[0].coverSrc != this._defaultCover) {
                    this.view.imgCover.src = this.view.segEmployees.selectedItems[0].coverSrc;
                } else {
                    if (this.view.segEmployees.selectedItems[0].cover_media_id != "" && this.view.segEmployees.selectedItems[0].cover_media_id != null) {
                        this.fetchCoverAndMap(this.view.segEmployees.selectedItems[0].cover_media_id);
                    }
                }
                this.view.forceLayout();
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting userDetailsInit Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function fetchCoverAndMap
         * @description Fetches cover image and maps to image widget
         * @param {int} id
         * @private
         */
        fetchCoverAndMap: function(id) {
            try {
                konymp.logger.trace("----------Entering fetchCoverAndMap Function---------", konymp.logger.FUNCTION_ENTRY);
                var integrationObj = new kony.sdk.getCurrentInstance().getIntegrationService("fetchImageService");
                var operationName = "getImage";
                var data = {
                    "Id": "" + id,
                    "fieldName": "Image",
                    "type": "bytes"
                };
                if (kony.sdk.getCurrentInstance().currentClaimToken == null) {
                    return;
                }
                var headers = {
                    "Content-Type": "application/x-www-urlencoded",
                    "X-Kony-Authorization": kony.sdk.getCurrentInstance().currentClaimToken
                };
                integrationObj.invokeOperation(operationName, headers, data, this.fetchCoverAndMapSuccess.bind(this), this.fetchCoverAndMapFailure.bind(this));
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting fetchCoverAndMap Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function fetchCoverAndMapSuccess
         * @description Success callback for fetchCoverAndMap
         * @param {Object} response
         * @private
         * @callback fetchCoverAndMap
         */
        fetchCoverAndMapSuccess: function(response) {
            try {
                konymp.logger.trace("----------Entering fetchCoverAndMapSuccess Function---------", konymp.logger.FUNCTION_ENTRY);
                this.view.imgCover.base64 = response.data;
                this.view.forceLayout();
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting fetchCoverAndMapSuccess Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function fetchCoverAndMapFailure
         * @description Failure callback for fetchCoverAndMap
         * @param {Object} response
         * @private
         * @callback fetchCoverAndMap
         */
        fetchCoverAndMapFailure: function(response) {
            try {
                konymp.logger.trace("----------Entering fetchCoverAndMapFailure Function---------", konymp.logger.FUNCTION_ENTRY);
                kony.print("Unable to fetch cover Image");
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting fetchCoverAndMapFailure Function---------", konymp.logger.FUNCTION_EXIT);

        },
        /**
         * @function userDetailsAnim
         * @description This function is responsible for the animation done on click of an employee
         * @private
         */
        userDetailsAnim: function() {
            try {
                konymp.logger.trace("----------Entering userDetailsAnim Function---------", konymp.logger.FUNCTION_ENTRY);
                this.view.flxEmployeeName.animate(kony.ui.createAnimation({
                    "0": {
                        "top": "100%"
                    },
                    "100": {
                        "top": "64.6%",
                        "stepConfig": {
                            "timingFunction": kony.anim.EASEIN_IN_OUT
                        }
                    }
                }), {
                    "delay": 0,
                    "fillMode": kony.anim.FILL_MODE_FORWARDS,
                    "duration": 0.3
                }, {
                    "animationEnd": function() {}
                });
                this.view.flxEmployeeProfilePic.animate(kony.ui.createAnimation({
                    "0": {
                        "bottom": "-40%"
                    },
                    "100": {
                        "bottom": "23.4%",
                        "stepConfig": {
                            "timingFunction": kony.anim.EASEIN_IN_OUT
                        }
                    }
                }), {
                    "delay": 0.25,
                    "fillMode": kony.anim.FILL_MODE_FORWARDS,
                    "duration": 0.3
                }, {
                    "animationEnd": function() {}
                });
                this.view.flxWrapper.animate(kony.ui.createAnimation({
                    "0": {
                        "top": "120%",
                        "opacity": "0.5"
                    },
                    "100": {
                        "top": "78%",
                        "opacity": "1",
                        "stepConfig": {
                            "timingFunction": kony.anim.EASEIN_IN_OUT
                        }
                    }
                }), {
                    "delay": 0.3,
                    "fillMode": kony.anim.FILL_MODE_FORWARDS,
                    "duration": 0.3
                }, {
                    "animationEnd": function() {}
                });

                this.view.FlxBackGround.animate(kony.ui.createAnimation({
                    "0": {
                        "width": "130%",
                        "height": "130%"
                    },
                    "100": {
                        "width": "100%",
                        "height": "100%",
                        "stepConfig": {
                            "timingFunction": kony.anim.EASEIN_IN_OUT
                        }
                    }
                }), {
                    "delay": 0.3,
                    "fillMode": kony.anim.FILL_MODE_FORWARDS,
                    "duration": 0.3
                }, {
                    "animationEnd": function() {}
                });
                this.view.flxScrollDetails.animate(kony.ui.createAnimation({
                    "0": {
                        "top": "38%",
                        "opacity": "0.3"
                    },
                    "100": {
                        "top": "0%",
                        "opacity": "1",
                        "stepConfig": {
                            "timingFunction": kony.anim.EASEIN_IN_OUT
                        }
                    }
                }), {
                    "delay": 0.4,
                    "fillMode": kony.anim.FILL_MODE_FORWARDS,
                    "duration": 0.3
                }, {
                    "animationEnd": function() {}
                });
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting userDetailsAnim Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function setGestureForScrollingAnimationInDetailsPage
         * @description sets a gesture recognizer when user tries to swipe in details screen
         * @private
         */
        setGestureForScrollingAnimationInDetailsPage: function() {
            try {
                konymp.logger.trace("----------Entering setGestureForScrollingAnimationInDetailsPage Function---------", konymp.logger.FUNCTION_ENTRY);
                this.view.flxBody.setGestureRecognizer(constants.GESTURE_TYPE_SWIPE, {
                    fingers: 1
                }, this.swipeAnimationCallback.bind(this));
                var originalDP = this.generalizeDp(80) + "dp";
                this.imageOriginalDP = originalDP;
                this.imageAnimatedDP = this.generalizeDp(65) + "dp";
                this.view.flxEmployeeProfilePic.height = originalDP;
                this.view.flxEmployeeProfilePic.width = originalDP;
                var equivalentDPFor42 = this.generalizeDp(42) + "dp";
                var equivalentDPFor32 = this.generalizeDp(32) + "dp";
                this.view.flxEmailHolder.width = equivalentDPFor42;
                this.view.flxEmailHolder.height = equivalentDPFor42;
                this.view.flxMapHolder.width = equivalentDPFor42;
                this.view.flxMapHolder.height = equivalentDPFor42;
                this.view.flxSkypeImageHolder.width = equivalentDPFor42;
                this.view.flxSkypeImageHolder.height = equivalentDPFor42;
                this.view.flxMobileImageHolder.width = equivalentDPFor42;
                this.view.flxMobileImageHolder.height = equivalentDPFor42;
                this.view.flxWorkImageHolder.width = equivalentDPFor42;
                this.view.flxWorkImageHolder.height = equivalentDPFor42;
                this.view.flxImageReportingManagerHolder.width = equivalentDPFor32;
                this.view.flxImageReportingManagerHolder.height = equivalentDPFor32;
                this.translationX = -Math.abs((this.generalizeDp(148)));
                this.translationY = -Math.abs((this.generalizeHeightInDp(90)));
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting setGestureForScrollingAnimationInDetailsPage Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function swipeAnimationCallback
         * @description changes button skin on click
         * @private
         * @param {Object} widgetID
         * @param {Object} gestureInfo
         * @callback setGestureForScrollingAnimationInDetailsPage
         */
        swipeAnimationCallback: function(widgetID, gestureInfo) {
            try {
                konymp.logger.trace("----------Entering swipeAnimationCallback Function---------", konymp.logger.FUNCTION_ENTRY);
                if (gestureInfo.swipeDirection === 3) {
                    if (this.view.flxBody.top == "42.25%") {
                        this.startedAnimation = true;
                        this.animatePhotoAndNamesInDetailsPage(0.3);
                        this.moveAnimation(this.view.flxBody, "23%", 0.3, true);
                        this.view.flxHeaderBar.skin = 'CopysknDarkHeaderBg3';
                        this.view.flxHeaderBar.imgBack.src = 'arrow_left_white_icon.png';
                        this.view.forceLayout();
                    }
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting swipeAnimationCallback Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function animatePhotoAndNamesInDetailsPage
         * @description Animates name and images in details page
         * @private
         * @param {string} time 
         */
        animatePhotoAndNamesInDetailsPage: function(time) {
            try {
                konymp.logger.trace("----------Entering animatePhotoAndNamesInDetailsPage Function---------", konymp.logger.FUNCTION_ENTRY);
                var context = this;
                this.view.flxEmployeeName.animate(kony.ui.createAnimation({
                    "100": {
                        "top": "20%",
                        "height": "35.4%",
                        "opacity": 1,
                        "stepConfig": {
                            "timingFunction": kony.anim.EASE_IN_OUT
                        }
                    }
                }), {
                    "delay": 0.05,
                    "iterationCount": 1,
                    "fillMode": kony.anim.FILL_MODE_FORWARDS,
                    "duration": time
                }, {
                    "animationEnd": function() {}
                });
                this.view.flxWrapper.animate(kony.ui.createAnimation({
                    "100": {
                        "top": "30%",
                        "left": "5%",
                        "stepConfig": {
                            "timingFunction": kony.anim.EASE_IN_OUT
                        }
                    }
                }), {
                    "delay": 0,
                    "iterationCount": 1,
                    "fillMode": kony.anim.FILL_MODE_FORWARDS,
                    "duration": time
                }, {
                    "animationEnd": function() {}
                });
                var transformObject = kony.ui.makeAffineTransform();
                transformObject.translate(this.translationX, this.translationY);
                transformObject.scale(0.60, 0.60);
                this.view.flxEmployeeProfilePic.animate(kony.ui.createAnimation({
                    "100": {
                        "transform": transformObject,
                    }
                }), {
                    "delay": 0,
                    "iterationCount": 1,
                    "fillMode": kony.anim.FILL_MODE_FORWARDS,
                    "duration": time
                }, {
                    "animationEnd": function() {}
                });
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting animatePhotoAndNamesInDetailsPage Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function moveAnimation
         * @description Generic function to animate objects 
         * @private
         * @param {Object} object
         * @param {String} top
         * @param {String} time
         * @param {String} isEnable
         */
        moveAnimation: function(object, top, time, isEnable) {
            try {
                konymp.logger.trace("----------Entering moveAnimation Function---------", konymp.logger.FUNCTION_ENTRY);
                this.isEnable = isEnable;
                object.animate(kony.ui.createAnimation({
                    "100": {
                        "top": top,
                        "stepConfig": {
                            "timingFunction": kony.anim.EASE_OUT
                        }
                    }
                }), {
                    "delay": 0,
                    "iterationCount": 1,
                    "fillMode": kony.anim.FILL_MODE_FORWARDS,
                    "duration": time
                }, {
                    "animationEnd": this.scrollEnable.bind(this)
                });
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting moveAnimation Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function scrollEnable
         * @description Enables scrolling in list screen
         * @private
         */
        scrollEnable: function() {
            try {
                konymp.logger.trace("----------Entering scrollEnable Function---------", konymp.logger.FUNCTION_ENTRY);
                this.view.flxScrollDetails.enableScrolling = this.isEnable;
                this.view.flxScrollHierarchy.bounces = this.isEnable;
                this.view.flxScrollHierarchy.enableScrolling = this.isEnable;
                this.startedAnimation = !this.isEnable;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting scrollEnable Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function reanimateTheWidgetsInDetailsPage
         * @description Animates back the widgets in details screen
         * @private
         */
        reanimateTheWidgetsInDetailsPage: function() {
            try {
                konymp.logger.trace("----------Entering reanimateTheWidgetsInDetailsPage Function---------", konymp.logger.FUNCTION_ENTRY);
                if (this.view.flxBody.top === "23%" && !this.startedAnimation) {
                    this.view.forceLayout();
                    this.reanimatePhotoAndNamesInDetailsPage(0.3);
                    this.moveAnimation(this.view.flxBody, "42.25%", 0.3, false);
                    this.view.flxHeaderBar.skin = 'slFbox';
                    this.view.flxHeaderBar.imgBack.src = 'arrow_left_white_icon.png';
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting reanimateTheWidgetsInDetailsPage Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function reanimatePhotoAndNamesInDetailsPage
         * @description nimates back the image and profile details in details screen
         * @private
         * @param {string} time
         */
        reanimatePhotoAndNamesInDetailsPage: function(time) {
            try {
                var context = this;
                konymp.logger.trace("----------Entering reanimatePhotoAndNamesInDetailsPage Function---------", konymp.logger.FUNCTION_ENTRY);
                this.view.flxEmployeeName.animate(kony.ui.createAnimation({
                    "100": {
                        "top": "64.6%",
                        "height": "35.4%",
                        "opacity": 1,
                        "stepConfig": {
                            "timingFunction": kony.anim.EASE_IN_OUT
                        }
                    }
                }), {
                    "delay": 0,
                    "iterationCount": 1,
                    "fillMode": kony.anim.FILL_MODE_FORWARDS,
                    "duration": time
                }, {
                    "animationEnd": function() {}
                });
                this.view.flxWrapper.animate(kony.ui.createAnimation({
                    "100": {
                        "top": "79%",
                        "left": "0%",
                        "stepConfig": {
                            "timingFunction": kony.anim.EASE_IN_OUT
                        }
                    }
                }), {
                    "delay": 0,
                    "iterationCount": 1,
                    "fillMode": kony.anim.FILL_MODE_FORWARDS,
                    "duration": time
                }, {
                    "animationEnd": function() {}
                });
                var transformObject = kony.ui.makeAffineTransform();
                transformObject.translate(0, 0);
                transformObject.scale(1, 1);
                this.view.forceLayout();
                this.view.flxEmployeeProfilePic.animate(kony.ui.createAnimation({
                    "100": {
                        "transform": transformObject,
                    }
                }), {
                    "delay": 0,
                    "iterationCount": 1,
                    "fillMode": kony.anim.FILL_MODE_FORWARDS,
                    "duration": time
                }, {
                    /**
                     * @function
                     *
                     */
                    "animationEnd": function() {}
                });
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

        },
        /**
         * @function generalizeDp
         * @description converts provided dp values according to screen size
         * @private
         * @param {string} dpToConvert 
         */
        generalizeDp: function(dpToConvert) {
            try {
                konymp.logger.trace("----------Entering generalizeDp Function---------", konymp.logger.FUNCTION_ENTRY);
                dpToConvert = parseFloat(dpToConvert);
                if (!isNaN(dpToConvert)) {
                    return dpToConvert * (kony.os.deviceInfo().screenWidth / this.SCREEN_DP);
                }
                return null;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting generalizeDp Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function generalizeHeightInDp
         * @description converts provided dp values according to screen size
         * @private
         * @param {string} dpToConvert 
         */
        generalizeHeightInDp: function(dpToConvert) {
            try {
                konymp.logger.trace("----------Entering generalizeHeightInDp Function---------", konymp.logger.FUNCTION_ENTRY);
                dpToConvert = parseFloat(dpToConvert);
                if (!isNaN(dpToConvert)) {
                    return dpToConvert * (kony.os.deviceInfo().screenHeight / this.SCREEN_HEIGHT_IN_DP);
                }
                return null;
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting generalizeHeightInDp Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function onTouchScrollStart
         * @description Function is invoked when scrolling starts on dictionary 
         * @private
         * @param {Object} eventobject 
         * @param {String} x
         * @param {string} y
         */
        onTouchScrollStart: function(event, x, y) {
            try {
                konymp.logger.trace("----------Entering onTouchScrollStart Function---------", konymp.logger.FUNCTION_ENTRY);
                this.view.lblDisplaySelectedIndex.top = y + "dp";
                this.view.lblDisplaySelectedIndex.setVisibility(true);
                this.view.forceLayout();
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting onTouchScrollStart Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function onTouchScrollMove
         * @description Function is invoked when scrolling on dictionary 
         * @private
         * @param {Object} event
         * @param {String} x
         * @param {string} y
         */
        onTouchScrollMove: function(event, x, y) {
            try {
                konymp.logger.trace("----------Entering onTouchScrollMove Function---------", konymp.logger.FUNCTION_ENTRY);

                this.view.lblDisplaySelectedIndex.isVisible = true;
                //#ifdef android
                this.view.lblDisplaySelectedIndex.isVisible = false;
                //#endif
                if (this.prev.skin != null && this.prev.skin != undefined) {
                    this.prev.skin = "Copysortbuttonskin3";
                }
                this.coordinate = [];
                this.coordinate[0] = [parseInt(JSON.stringify(this.view.flxDictionary.A.frame.y)), "A", this.view.flxDictionary.A];
                this.coordinate[1] = [parseInt(JSON.stringify(this.view.flxDictionary.B.frame.y)), "B", this.view.flxDictionary.B];
                this.coordinate[2] = [parseInt(JSON.stringify(this.view.flxDictionary.C.frame.y)), "C", this.view.flxDictionary.C];
                this.coordinate[3] = [parseInt(JSON.stringify(this.view.flxDictionary.D.frame.y)), "D", this.view.flxDictionary.D];
                this.coordinate[4] = [parseInt(JSON.stringify(this.view.flxDictionary.E.frame.y)), "E", this.view.flxDictionary.E];
                this.coordinate[5] = [parseInt(JSON.stringify(this.view.flxDictionary.F.frame.y)), "F", this.view.flxDictionary.F];
                this.coordinate[6] = [parseInt(JSON.stringify(this.view.flxDictionary.G.frame.y)), "G", this.view.flxDictionary.G];
                this.coordinate[7] = [parseInt(JSON.stringify(this.view.flxDictionary.H.frame.y)), "H", this.view.flxDictionary.H];
                this.coordinate[8] = [parseInt(JSON.stringify(this.view.flxDictionary.I.frame.y)), "I", this.view.flxDictionary.I];
                this.coordinate[9] = [parseInt(JSON.stringify(this.view.flxDictionary.J.frame.y)), "J", this.view.flxDictionary.J];
                this.coordinate[10] = [parseInt(JSON.stringify(this.view.flxDictionary.K.frame.y)), "K", this.view.flxDictionary.K];
                this.coordinate[11] = [parseInt(JSON.stringify(this.view.flxDictionary.L.frame.y)), "L", this.view.flxDictionary.L];
                this.coordinate[12] = [parseInt(JSON.stringify(this.view.flxDictionary.M.frame.y)), "M", this.view.flxDictionary.M];
                this.coordinate[13] = [parseInt(JSON.stringify(this.view.flxDictionary.N.frame.y)), "N", this.view.flxDictionary.N];
                this.coordinate[14] = [parseInt(JSON.stringify(this.view.flxDictionary.O.frame.y)), "O", this.view.flxDictionary.O];
                this.coordinate[15] = [parseInt(JSON.stringify(this.view.flxDictionary.P.frame.y)), "P", this.view.flxDictionary.P];
                this.coordinate[16] = [parseInt(JSON.stringify(this.view.flxDictionary.Q.frame.y)), "Q", this.view.flxDictionary.Q];
                this.coordinate[17] = [parseInt(JSON.stringify(this.view.flxDictionary.R.frame.y)), "R", this.view.flxDictionary.R];
                this.coordinate[18] = [parseInt(JSON.stringify(this.view.flxDictionary.S.frame.y)), "S", this.view.flxDictionary.S];
                this.coordinate[19] = [parseInt(JSON.stringify(this.view.flxDictionary.T.frame.y)), "T", this.view.flxDictionary.T];
                this.coordinate[20] = [parseInt(JSON.stringify(this.view.flxDictionary.U.frame.y)), "U", this.view.flxDictionary.U];
                this.coordinate[21] = [parseInt(JSON.stringify(this.view.flxDictionary.V.frame.y)), "V", this.view.flxDictionary.V];
                this.coordinate[22] = [parseInt(JSON.stringify(this.view.flxDictionary.W.frame.y)), "W", this.view.flxDictionary.W];
                this.coordinate[23] = [parseInt(JSON.stringify(this.view.flxDictionary.X.frame.y)), "X", this.view.flxDictionary.X];
                this.coordinate[24] = [parseInt(JSON.stringify(this.view.flxDictionary.Y.frame.y)), "Y", this.view.flxDictionary.Y];
                this.coordinate[25] = [parseInt(JSON.stringify(this.view.flxDictionary.Z.frame.y)), "Z", this.view.flxDictionary.Z];
                this.topLimit = parseInt(JSON.stringify(this.view.flxTop.frame.y));
                this.bottomLimit = parseInt(JSON.stringify(this.view.flxTop.frame.y));
                if (y >= this.coordinate[0][0] && y <= this.coordinate[25][0]) {
                    this.view.lblDisplaySelectedIndex.top = this.topLimit + y + "dp";
                } else if (y >= this.coordinate[25][0]) {
                    this.view.lblDisplaySelectedIndex.top = this.bottomLimit + y + "dp";
                } else if (y <= this.coordinate[0][0]) {
                    this.view.lblDisplaySelectedIndex.top = this.topLimit + y + "dp";
                }
                var valueObtained = this.getCoordinateIndex(this.coordinate, parseInt(y));
                if (valueObtained >= 0) {
                    this.view.lblDisplaySelectedIndex.text = this.coordinate[valueObtained][1];
                } else this.view.lblDisplaySelectedIndex.text = this.coordinate[0][1];
                this.view.flxDictionary[this.view.lblDisplaySelectedIndex.text].skin = "sknAssignBeforeAfter";
                this.prev = this.view.flxDictionary[this.view.lblDisplaySelectedIndex.text];
                this.scrollEmployeeDetails(this.view.flxDictionary[this.view.lblDisplaySelectedIndex.text].text);
                this.view.forceLayout();
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting onTouchScrollMove Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function getCoordinateIndex
         * @description Returns the coordinate index for clicked button
         * @private
         * @param {string} coordinate
         * @param {string} searchElement
         */
        getCoordinateIndex: function(coordinate, searchElement) {
            try {
                konymp.logger.trace("----------Entering getCoordinateIndex Function---------", konymp.logger.FUNCTION_ENTRY);
                var minIndex = 0;
                var maxIndex = coordinate.length - 1;
                var currentIndex;
                var currentElement;
                var previousElement;
                while (minIndex <= maxIndex) {
                    currentIndex = (minIndex + maxIndex) / 2 | 0;
                    if (currentIndex > 0) previousElement = coordinate[currentIndex - 1][0];
                    else previousElement = coordinate[currentIndex][0];
                    currentElement = coordinate[currentIndex][0];
                    if (currentElement < searchElement) {
                        minIndex = currentIndex + 1;
                    } else if (currentElement > searchElement) {
                        maxIndex = currentIndex - 1;
                    } else {
                        kony.print("-- end getthis.coordinateIndex --");
                        return currentIndex;
                    }
                }
                if (currentElement > searchElement && previousElement < searchElement) {
                    kony.print("-- end getthis.coordinateIndex --");
                    return currentIndex - 1;
                } else {
                    kony.print("-- end getthis.coordinateIndex --");
                    return currentIndex;
                }
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting getCoordinateIndex Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function navigateFlex
         * @description This function brings in and out the details screen
         * @private
         * @param {Object} context
         * @param {string} left 
         */
        navigateFlex: function(context, left) {
            try {
                konymp.logger.trace("----------Entering navigateFlex Function---------", konymp.logger.FUNCTION_ENTRY);
                //#ifdef iphone
                this.view.tbxSearch.setFocus(false);
                this.view.forceLayout();
                //#endif
                if (left == "0%") {
                    this.userDetailsInit();
                }
                this.view.flxDetailsScreen.animate(kony.ui.createAnimation({
                    "100": {
                        "left": left,
                        "height": "100%",
                        "opacity": 1,
                        "stepConfig": {
                            "timingFunction": kony.anim.EASE_OUT
                        }
                    }
                }), {
                    "delay": 0,
                    "iterationCount": 1,
                    "fillMode": kony.anim.FILL_MODE_FORWARDS,
                    "duration": 0.5
                }, {
                    "animationEnd": function() {
                        if (left == "0%") {
                            context.animateUserDetails();
                        }
                    }
                });
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting navigateFlex Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function animateUserDetails
         * @description Animates the user details entered
         * @private
         */
        animateUserDetails: function() {
            try {
                konymp.logger.trace("----------Entering animateUserDetails Function---------", konymp.logger.FUNCTION_ENTRY);
                this.view.lblEmployeeName.text = this.view.segEmployees.selectedItems[0].name;
                this.view.lblEmployeeDesignation.text = this.view.segEmployees.selectedItems[0].designation;
                if (this.view.segEmployees.selectedItems[0].image.base64 != null && this.view.segEmployees.selectedItems[0].image.base64 != undefined) {
                    this.view.imgEmployee.base64 = this.view.segEmployees.selectedItems[0].image.base64;
                } else {
                    this.view.imgEmployee.src = this.view.segEmployees.selectedItems[0].image.src;
                }
                this.view.lblDepartmentValue.text = this.view.segEmployees.selectedItems[0].department;
                this.view.callMobileFlex.isVisible = false;
                this.view.callWorkFlex.isVisible = false;
                this.view.emailFlex.isVisible = false;
                this.view.flxImageReportingManagerHolder.isVisible = false;
                this.view.reportingToFlex.isVisible = false;
                if (this.view.segEmployees.selectedItems[0].key.isVisible == true) {
                    this.view.lblInvisible.skin = this.view.segEmployees.selectedItems[0].key.skin;
                    this.view.lblInvisible.isVisible = true;
                } else {
                    this.view.lblInvisible.isVisible = false;
                }
                this.view.locationFlex.isVisible = false;
                for (var i = 0; i < this.contact.length; i++) {
                    if (this.view.segEmployees.selectedItems[0].employee_id == this.contact[i].employee_id) {
                        if (this.contact[i].Contact_type_id == "1") {
                            if (this.contact[i].Value !== null && this.contact[i].Value !== "") {
                                this.view.lblCallMobileValue.text = this.contact[i].Value;
                                this.view.callMobileFlex.isVisible = true;
                            } else {
                                this.view.callMobileFlex.isVisible = false;
                            }
                        }
                        if (this.contact[i].Contact_type_id == "2") {
                            if (this.contact[i].Value !== null && this.contact[i].Value !== "") {
                                this.view.lblCallWorkValue.text = this.contact[i].Value;
                                this.view.callWorkFlex.isVisible = true;
                            } else {
                                this.view.callWorkFlex.isVisible = false;
                            }
                        }
                        if (this.contact[i].Contact_type_id == "3") {
                            if (this.contact[i].Value !== null && this.contact[i].Value !== "") {
                                this.view.lblEmailValue.text = this.contact[i].Value;
                                this.view.emailFlex.isVisible = true;
                            } else {
                                this.view.emailFlex.isVisible = false;
                            }
                        }
                        this.view.forceLayout();
                    }
                }
                var selectedEmployee = this.view.segEmployees.selectedItems[0];
                var manager_id = selectedEmployee.manager_id;
                for (var i = 0; i < this.employee.length; i++) {
                    if (this.employee[i].Employee_id === manager_id) {
                        var manager_name = this.employee[i].First_name + " " + this.employee[i].Last_name;
                        this.view.lblReportingToValue.text = manager_name;
                        this.view.reportingToFlex.isVisible = true;
                        break;
                    }
                }
                var segData = this.globalData;
                for (var i = 0; i < segData.length; i++) {
                    if (segData[i].employee_id == manager_id) {
                        this.view.flxImageReportingManagerHolder.isVisible = true;
                        if (segData[i].image.base64 != null && segData[i].image.base64 != undefined) {
                            this.view.imgReportingTo.base64 = segData[i].image.base64;
                        } else if (segData[i].image.src != null && segData[i].image.src != undefined) {
                            this.view.imgReportingTo.src = segData[i].image.src;
                        }
                        if (segData[i].image.src == this._defaultProfile) {
                            this.view.flxImageReportingManagerHolder.isVisible = false;
                        }
                    }
                }
                for (var i = 0; i < this.location.length; i++) {
                    if (this.location[i].Location_id == this.view.segEmployees.selectedItems[0].location_id) {
                        this.view.locationFlex.isVisible = true;
                        this.view.lblLocationValue.text = this.location[i].Address1 + " " + this.location[i].Address2 + " " + this.location[i].City + " " + this.location[i].Country;
                    }
                }
                this.view.flxEmployeeProfilePic.isVisible = true;
                this.view.flxScrollDetails.isVisible = true;
                if (this.view.flxScrollDetails.callMobileFlex.isVisible) {
                    this.view.flxScrollDetails.callMobileFlex.onTouchEnd = this.reanimateTheWidgetsInDetailsPage.bind(this);
                }
                if (this.view.flxScrollDetails.callWorkFlex.isVisible) {
                    this.view.flxScrollDetails.callWorkFlex.onTouchEnd = this.reanimateTheWidgetsInDetailsPage.bind(this);
                }
                if (this.view.flxScrollDetails.emailFlex.isVisible) {
                    this.view.flxScrollDetails.emailFlex.onTouchEnd = this.reanimateTheWidgetsInDetailsPage.bind(this);
                }
                if (this.view.flxScrollDetails.departmentFlex.isVisible) {
                    this.view.flxScrollDetails.departmentFlex.onTouchEnd = this.reanimateTheWidgetsInDetailsPage.bind(this);
                }
                if (this.view.flxScrollDetails.reportingToFlex.isVisible) {
                    this.view.flxScrollDetails.reportingToFlex.onTouchEnd = this.reanimateTheWidgetsInDetailsPage.bind(this);
                }
                if (this.view.flxScrollDetails.locationFlex.isVisible) {
                    this.view.flxScrollDetails.locationFlex.onTouchEnd = this.reanimateTheWidgetsInDetailsPage.bind(this);
                }
                this.view.forceLayout();
                this.userDetailsAnim();
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }

            konymp.logger.trace("----------Exiting animateUserDetails Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function scrollEmployeeDetails
         * @description Changes the view of selected employees to scrolled employees
         * @private
         * @param {string} key 
         */
        scrollEmployeeDetails: function(key) {
            try {
                konymp.logger.trace("----------Entering scrollEmployeeDetails Function---------", konymp.logger.FUNCTION_ENTRY);
                var masterData = this.view.segEmployees.data;
                for (var i = 0; i < masterData.length; i++) {
                    if (masterData[i].key.text == key) {
                        this.view.segEmployees.selectedRowIndex = [0, i];
                        break;
                    }
                }
                this.view.forceLayout();
            } catch (exception) {
                konymp.logger.error(JSON.stringify(exception), konymp.logger.EXCEPTION);
            }
            konymp.logger.trace("----------Exiting scrollEmployeeDetails Function---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function getData
         * @description returns all the data present in the segment
         * @public
         * @return {object} filterData 
         */
        getData: function() {
            konymp.logger.trace("----------Entering getData API---------", konymp.logger.FUNCTION_EXIT);
            var dept = [];
            var desgn = [];
            for (var i in this.department) {
                dept.push({
                    text: this.department[i].Name,
                    src: 'checkboxinactive.png',
                    callback: function() {}
                });
            }
            for (var j in this.designation) {
                desgn.push({
                    text: this.designation[j].Name,
                    src: 'checkboxinactive.png',
                    callback: function() {}
                });
            }
            var filterData = [
                ["Department", "", dept],
                ["Designation", "", desgn]
            ];
            return filterData;
            konymp.logger.trace("----------Exiting getData API---------", konymp.logger.FUNCTION_EXIT);
        },
        /**
         * @function filterAndSetData
         * @description Filters and sets data to segment 
         * @public
         * @param {object} records 
         */
        filterAndSetData: function(records) {
            konymp.logger.trace("----------Entering filterAndSetData API---------", konymp.logger.FUNCTION_EXIT);
            var masterData = this.globalData;
            var designationJSON = [];
            var departmentJSON = [];
            if (records.length == 0) {
                this.view.segEmployees.setData(this.globalData);
                this.view.forceLayout();
                return;
            }
            this.view.segEmployees.setData([]);
            var department = records[0]["Department"];
            var designation = records[1]["Designation"];
            var dept = 1;
            for (i = 0; i < masterData.length; i++) {
                for (j = 0; j < Object.keys(designation).length; j++) {
                    if (Object.keys(designation)[j] == masterData[i].designation && designation[Object.keys(designation)[j]] == 1) {
                        designationJSON.push(masterData[i]);
                        break;
                    }
                }
            }
            var tempjson = designationJSON;
            if (designationJSON.length == 0) {
                tempjson = this.globalData;
            }
            for (i = 0; i < tempjson.length; i++) {
                for (j = 0; j < Object.keys(department).length; j++) {
                    if (Object.keys(department)[j] == tempjson[i].department && department[Object.keys(department)[j]] == 1) {
                        departmentJSON.push(tempjson[i]);
                        break;
                    }
                }
            }
            if (departmentJSON.length == 0 && designationJSON.length == 0) {
                this.view.segEmployees.setData(this.globalData);
            } else if (departmentJSON.length == 0 && designationJSON.length != 0) {
                this.view.segEmployees.setData(designationJSON);
            } else if (departmentJSON.length != 0 && designationJSON.length == 0) {
                this.view.segEmployees.setData(departmentJSON);
            } else if (departmentJSON.length != 0 && designationJSON.length != 0) {
                this.view.segEmployees.setData(departmentJSON);
            }
            this.view.forceLayout();
            konymp.logger.trace("----------Exiting filterAndSetData API---------", konymp.logger.FUNCTION_EXIT);
        }
    };
});
