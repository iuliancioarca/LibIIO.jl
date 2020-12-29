# Automatically generated using Clang.jl


const ssize_t = Cptrdiff_t
const iio_context = Cvoid
const iio_device = Cvoid
const iio_channel = Cvoid
const iio_buffer = Cvoid
const iio_context_info = Cvoid
const iio_scan_context = Cvoid
const iio_scan_block = Cvoid

@cenum iio_chan_type::UInt32 begin
    IIO_VOLTAGE = 0
    IIO_CURRENT = 1
    IIO_POWER = 2
    IIO_ACCEL = 3
    IIO_ANGL_VEL = 4
    IIO_MAGN = 5
    IIO_LIGHT = 6
    IIO_INTENSITY = 7
    IIO_PROXIMITY = 8
    IIO_TEMP = 9
    IIO_INCLI = 10
    IIO_ROT = 11
    IIO_ANGL = 12
    IIO_TIMESTAMP = 13
    IIO_CAPACITANCE = 14
    IIO_ALTVOLTAGE = 15
    IIO_CCT = 16
    IIO_PRESSURE = 17
    IIO_HUMIDITYRELATIVE = 18
    IIO_ACTIVITY = 19
    IIO_STEPS = 20
    IIO_ENERGY = 21
    IIO_DISTANCE = 22
    IIO_VELOCITY = 23
    IIO_CONCENTRATION = 24
    IIO_RESISTANCE = 25
    IIO_PH = 26
    IIO_UVINDEX = 27
    IIO_ELECTRICALCONDUCTIVITY = 28
    IIO_COUNT = 29
    IIO_INDEX = 30
    IIO_GRAVITY = 31
    IIO_POSITIONRELATIVE = 32
    IIO_PHASE = 33
    IIO_MASSCONCENTRATION = 34
    IIO_CHAN_TYPE_UNKNOWN = 2147483647
end

@cenum iio_modifier::UInt32 begin
    IIO_NO_MOD = 0
    IIO_MOD_X = 1
    IIO_MOD_Y = 2
    IIO_MOD_Z = 3
    IIO_MOD_X_AND_Y = 4
    IIO_MOD_X_AND_Z = 5
    IIO_MOD_Y_AND_Z = 6
    IIO_MOD_X_AND_Y_AND_Z = 7
    IIO_MOD_X_OR_Y = 8
    IIO_MOD_X_OR_Z = 9
    IIO_MOD_Y_OR_Z = 10
    IIO_MOD_X_OR_Y_OR_Z = 11
    IIO_MOD_LIGHT_BOTH = 12
    IIO_MOD_LIGHT_IR = 13
    IIO_MOD_ROOT_SUM_SQUARED_X_Y = 14
    IIO_MOD_SUM_SQUARED_X_Y_Z = 15
    IIO_MOD_LIGHT_CLEAR = 16
    IIO_MOD_LIGHT_RED = 17
    IIO_MOD_LIGHT_GREEN = 18
    IIO_MOD_LIGHT_BLUE = 19
    IIO_MOD_QUATERNION = 20
    IIO_MOD_TEMP_AMBIENT = 21
    IIO_MOD_TEMP_OBJECT = 22
    IIO_MOD_NORTH_MAGN = 23
    IIO_MOD_NORTH_TRUE = 24
    IIO_MOD_NORTH_MAGN_TILT_COMP = 25
    IIO_MOD_NORTH_TRUE_TILT_COMP = 26
    IIO_MOD_RUNNING = 27
    IIO_MOD_JOGGING = 28
    IIO_MOD_WALKING = 29
    IIO_MOD_STILL = 30
    IIO_MOD_ROOT_SUM_SQUARED_X_Y_Z = 31
    IIO_MOD_I = 32
    IIO_MOD_Q = 33
    IIO_MOD_CO2 = 34
    IIO_MOD_VOC = 35
    IIO_MOD_LIGHT_UV = 36
    IIO_MOD_LIGHT_DUV = 37
    IIO_MOD_PM1 = 38
    IIO_MOD_PM2P5 = 39
    IIO_MOD_PM4 = 40
    IIO_MOD_PM10 = 41
    IIO_MOD_ETHANOL = 42
    IIO_MOD_H2 = 43
    IIO_MOD_O2 = 44
end


struct iio_data_format
    length::UInt32
    bits::UInt32
    shift::UInt32
    is_signed::Bool
    is_fully_defined::Bool
    is_be::Bool
    with_scale::Bool
    scale::Cdouble
    repeat::UInt32
end
