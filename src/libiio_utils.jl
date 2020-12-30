
function iio_device_attr_read(dev, attr, len=1024)
	dst = pointer(zeros(UInt8, len))
    iio_device_attr_read(dev, attr, dst, len)
	unsafe_string(dst)
end

#function iio_device_attr_read_all(dev, cb, data)
#    iio_device_attr_read_all(dev, cb, data)
#end

function iio_device_attr_read_bool(dev, attr)
	val=Ref(false)
    iio_device_attr_read_bool(dev, attr, val)
	val[]
end

function iio_device_attr_read_longlong(dev, attr)
	val=Ref(Int64(0))
    iio_device_attr_read_longlong(dev, attr, val)
	val[]
end

function iio_device_attr_read_double(dev, attr)
	val=Ref(0.0)
    iio_device_attr_read_double(dev, attr, val)
	val[]
end



function iio_channel_attr_read(chn, attr, len=1024)
	dst = pointer(zeros(UInt8, len))
    iio_channel_attr_read(chn, attr, dst, len)
	unsafe_string(dst)
end

#function iio_channel_attr_read_all(chn, cb, data)
#    iio_channel_attr_read_all(chn, cb, data)
#end

function iio_channel_attr_read_bool(chn, attr)
	val=Ref(false)
    iio_channel_attr_read_bool(chn, attr, val)
	val[]
end

function iio_channel_attr_read_longlong(chn, attr)
	val=Ref(Int64(0))
    iio_channel_attr_read_longlong(chn, attr, val)
	val[]
end

function iio_channel_attr_read_double(chn, attr)
	val=Ref(0.0)
    iio_channel_attr_read_double(chn, attr, val)
	val[]
end