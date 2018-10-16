#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSUnit_symbols(JSContext*);
@protocol NSUnitConcentrationMassInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitConcentrationMassClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitConcentrationMass *) millimolesPerLiterWithGramsPerMole: (double) gramsPerMole ;
+(NSUnitConcentrationMass *) gramsPerLiter;
+(NSUnitConcentrationMass *) milligramsPerDeciliter;
@end
@protocol NSUnitInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSString * symbol;
JSExportAs(initWithSymbol,
-(id) jsinitWithSymbol: (NSString *) symbol );
@end
@protocol NSUnitClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSUnitPressureInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitPressureClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitPressure *) inchesOfMercury;
+(NSUnitPressure *) megapascals;
+(NSUnitPressure *) kilopascals;
+(NSUnitPressure *) gigapascals;
+(NSUnitPressure *) bars;
+(NSUnitPressure *) newtonsPerMetersSquared;
+(NSUnitPressure *) poundsForcePerSquareInch;
+(NSUnitPressure *) millimetersOfMercury;
+(NSUnitPressure *) hectopascals;
+(NSUnitPressure *) millibars;
@end
@protocol NSUnitMassInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitMassClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitMass *) stones;
+(NSUnitMass *) metricTons;
+(NSUnitMass *) nanograms;
+(NSUnitMass *) grams;
+(NSUnitMass *) micrograms;
+(NSUnitMass *) kilograms;
+(NSUnitMass *) milligrams;
+(NSUnitMass *) decigrams;
+(NSUnitMass *) poundsMass;
+(NSUnitMass *) shortTons;
+(NSUnitMass *) ounces;
+(NSUnitMass *) picograms;
+(NSUnitMass *) carats;
+(NSUnitMass *) centigrams;
+(NSUnitMass *) ouncesTroy;
+(NSUnitMass *) slugs;
@end
@protocol NSUnitPowerInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitPowerClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitPower *) microwatts;
+(NSUnitPower *) watts;
+(NSUnitPower *) gigawatts;
+(NSUnitPower *) nanowatts;
+(NSUnitPower *) megawatts;
+(NSUnitPower *) picowatts;
+(NSUnitPower *) femtowatts;
+(NSUnitPower *) horsepower;
+(NSUnitPower *) terawatts;
+(NSUnitPower *) milliwatts;
+(NSUnitPower *) kilowatts;
@end
@protocol NSUnitConverterInstanceExports<JSExport>
-(double) baseUnitValueFromValue: (double) value ;
-(double) valueFromBaseUnitValue: (double) baseUnitValue ;
@end
@protocol NSUnitConverterClassExports<JSExport>
@end
@protocol NSUnitDispersionInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitDispersionClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitDispersion *) partsPerMillion;
@end
@protocol NSUnitAngleInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitAngleClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitAngle *) arcMinutes;
+(NSUnitAngle *) revolutions;
+(NSUnitAngle *) radians;
+(NSUnitAngle *) gradians;
+(NSUnitAngle *) degrees;
+(NSUnitAngle *) arcSeconds;
@end
@protocol NSUnitEnergyInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitEnergyClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitEnergy *) joules;
+(NSUnitEnergy *) calories;
+(NSUnitEnergy *) kilojoules;
+(NSUnitEnergy *) kilocalories;
+(NSUnitEnergy *) kilowattHours;
@end
@protocol NSUnitTemperatureInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitTemperatureClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitTemperature *) fahrenheit;
+(NSUnitTemperature *) kelvin;
+(NSUnitTemperature *) celsius;
@end
@protocol NSUnitElectricCurrentInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitElectricCurrentClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitElectricCurrent *) amperes;
+(NSUnitElectricCurrent *) kiloamperes;
+(NSUnitElectricCurrent *) milliamperes;
+(NSUnitElectricCurrent *) megaamperes;
+(NSUnitElectricCurrent *) microamperes;
@end
@protocol NSUnitAreaInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitAreaClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitArea *) squareKilometers;
+(NSUnitArea *) squareNanometers;
+(NSUnitArea *) squareFeet;
+(NSUnitArea *) squareMillimeters;
+(NSUnitArea *) squareMiles;
+(NSUnitArea *) squareYards;
+(NSUnitArea *) acres;
+(NSUnitArea *) squareMicrometers;
+(NSUnitArea *) hectares;
+(NSUnitArea *) squareMeters;
+(NSUnitArea *) squareMegameters;
+(NSUnitArea *) squareInches;
+(NSUnitArea *) squareCentimeters;
+(NSUnitArea *) ares;
@end
@protocol NSUnitLengthInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitLengthClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitLength *) nanometers;
+(NSUnitLength *) feet;
+(NSUnitLength *) meters;
+(NSUnitLength *) astronomicalUnits;
+(NSUnitLength *) picometers;
+(NSUnitLength *) lightyears;
+(NSUnitLength *) parsecs;
+(NSUnitLength *) inches;
+(NSUnitLength *) micrometers;
+(NSUnitLength *) decimeters;
+(NSUnitLength *) fathoms;
+(NSUnitLength *) centimeters;
+(NSUnitLength *) megameters;
+(NSUnitLength *) nauticalMiles;
+(NSUnitLength *) yards;
+(NSUnitLength *) kilometers;
+(NSUnitLength *) furlongs;
+(NSUnitLength *) decameters;
+(NSUnitLength *) scandinavianMiles;
+(NSUnitLength *) miles;
+(NSUnitLength *) millimeters;
+(NSUnitLength *) hectometers;
@end
@protocol NSUnitAccelerationInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitAccelerationClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitAcceleration *) metersPerSecondSquared;
+(NSUnitAcceleration *) gravity;
@end
@protocol NSUnitElectricChargeInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitElectricChargeClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitElectricCharge *) megaampereHours;
+(NSUnitElectricCharge *) ampereHours;
+(NSUnitElectricCharge *) kiloampereHours;
+(NSUnitElectricCharge *) milliampereHours;
+(NSUnitElectricCharge *) coulombs;
+(NSUnitElectricCharge *) microampereHours;
@end
@protocol NSUnitFrequencyInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitFrequencyClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitFrequency *) megahertz;
+(NSUnitFrequency *) microhertz;
+(NSUnitFrequency *) hertz;
+(NSUnitFrequency *) terahertz;
+(NSUnitFrequency *) nanohertz;
+(NSUnitFrequency *) gigahertz;
+(NSUnitFrequency *) millihertz;
+(NSUnitFrequency *) kilohertz;
@end
@protocol NSUnitVolumeInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitVolumeClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitVolume *) imperialFluidOunces;
+(NSUnitVolume *) pints;
+(NSUnitVolume *) kiloliters;
+(NSUnitVolume *) teaspoons;
+(NSUnitVolume *) cubicMiles;
+(NSUnitVolume *) metricCups;
+(NSUnitVolume *) acreFeet;
+(NSUnitVolume *) cubicDecimeters;
+(NSUnitVolume *) cubicYards;
+(NSUnitVolume *) deciliters;
+(NSUnitVolume *) liters;
+(NSUnitVolume *) centiliters;
+(NSUnitVolume *) cubicMeters;
+(NSUnitVolume *) imperialGallons;
+(NSUnitVolume *) milliliters;
+(NSUnitVolume *) imperialTeaspoons;
+(NSUnitVolume *) cups;
+(NSUnitVolume *) quarts;
+(NSUnitVolume *) cubicInches;
+(NSUnitVolume *) cubicCentimeters;
+(NSUnitVolume *) bushels;
+(NSUnitVolume *) cubicFeet;
+(NSUnitVolume *) cubicKilometers;
+(NSUnitVolume *) megaliters;
+(NSUnitVolume *) imperialQuarts;
+(NSUnitVolume *) tablespoons;
+(NSUnitVolume *) fluidOunces;
+(NSUnitVolume *) cubicMillimeters;
+(NSUnitVolume *) imperialTablespoons;
+(NSUnitVolume *) gallons;
+(NSUnitVolume *) imperialPints;
@end
@protocol NSDimensionInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly,copy) NSUnitConverter * converter;
JSExportAs(initWithSymbolConverter,
-(id) jsinitWithSymbol: (NSString *) symbol converter: (NSUnitConverter *) converter );
@end
@protocol NSDimensionClassExports<JSExport, NSSecureCodingClassExports_>
+(id) baseUnit;
@end
@protocol NSUnitSpeedInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitSpeedClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitSpeed *) metersPerSecond;
+(NSUnitSpeed *) knots;
+(NSUnitSpeed *) kilometersPerHour;
+(NSUnitSpeed *) milesPerHour;
@end
@protocol NSUnitFuelEfficiencyInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitFuelEfficiencyClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitFuelEfficiency *) litersPer100Kilometers;
+(NSUnitFuelEfficiency *) milesPerImperialGallon;
+(NSUnitFuelEfficiency *) milesPerGallon;
@end
@protocol NSUnitElectricPotentialDifferenceInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitElectricPotentialDifferenceClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitElectricPotentialDifference *) volts;
+(NSUnitElectricPotentialDifference *) microvolts;
+(NSUnitElectricPotentialDifference *) millivolts;
+(NSUnitElectricPotentialDifference *) kilovolts;
+(NSUnitElectricPotentialDifference *) megavolts;
@end
@protocol NSUnitConverterLinearInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly) double coefficient;
@property (readonly) double constant;
JSExportAs(initWithCoefficientConstant,
-(id) jsinitWithCoefficient: (double) coefficient constant: (double) constant );
JSExportAs(initWithCoefficient,
-(id) jsinitWithCoefficient: (double) coefficient );
@end
@protocol NSUnitConverterLinearClassExports<JSExport, NSSecureCodingClassExports_>
@end
@protocol NSUnitElectricResistanceInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitElectricResistanceClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitElectricResistance *) microohms;
+(NSUnitElectricResistance *) ohms;
+(NSUnitElectricResistance *) kiloohms;
+(NSUnitElectricResistance *) milliohms;
+(NSUnitElectricResistance *) megaohms;
@end
@protocol NSUnitDurationInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitDurationClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitDuration *) seconds;
+(NSUnitDuration *) hours;
+(NSUnitDuration *) minutes;
@end
@protocol NSUnitIlluminanceInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@end
@protocol NSUnitIlluminanceClassExports<JSExport, NSSecureCodingClassExports_>
+(NSUnitIlluminance *) lux;
@end
#pragma clang diagnostic pop