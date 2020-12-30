# Julia wrapper for header: iio.h
# Automatically generated using Clang.jl
const libiio = "libiio"

function iio_create_scan_context(backend, flags)
    ccall((:iio_create_scan_context, libiio), Ptr{iio_scan_context}, (Cstring, UInt32), backend, flags)
end

function iio_scan_context_destroy(ctx)
    ccall((:iio_scan_context_destroy, libiio), Cvoid, (Ptr{iio_scan_context},), ctx)
end

function iio_scan_context_get_info_list(ctx, info)
    ccall((:iio_scan_context_get_info_list, libiio), ssize_t, (Ptr{iio_scan_context}, Ptr{Ptr{Ptr{iio_context_info}}}), ctx, info)
end

function iio_context_info_list_free(info)
    ccall((:iio_context_info_list_free, libiio), Cvoid, (Ptr{Ptr{iio_context_info}},), info)
end

function iio_context_info_get_description(info)
    ccall((:iio_context_info_get_description, libiio), Cstring, (Ptr{iio_context_info},), info)
end

function iio_context_info_get_uri(info)
    ccall((:iio_context_info_get_uri, libiio), Cstring, (Ptr{iio_context_info},), info)
end

function iio_create_scan_block(backend, flags)
    ccall((:iio_create_scan_block, libiio), Ptr{iio_scan_block}, (Cstring, UInt32), backend, flags)
end

function iio_scan_block_destroy(blk)
    ccall((:iio_scan_block_destroy, libiio), Cvoid, (Ptr{iio_scan_block},), blk)
end

function iio_scan_block_scan(blk)
    ccall((:iio_scan_block_scan, libiio), ssize_t, (Ptr{iio_scan_block},), blk)
end

function iio_scan_block_get_info(blk, index)
    ccall((:iio_scan_block_get_info, libiio), Ptr{iio_context_info}, (Ptr{iio_scan_block}, UInt32), blk, index)
end

function iio_library_get_version(major, minor, git_tag)
    ccall((:iio_library_get_version, libiio), Cvoid, (Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt8}), major, minor, git_tag)
end

function iio_strerror(err, dst, len)
    ccall((:iio_strerror, libiio), Cvoid, (Cint, Cstring, Csize_t), err, dst, len)
end

function iio_has_backend(backend)
    ccall((:iio_has_backend, libiio), Bool, (Cstring,), backend)
end

function iio_get_backends_count()
    ccall((:iio_get_backends_count, libiio), UInt32, ())
end

function iio_get_backend(index)
    ccall((:iio_get_backend, libiio), Cstring, (UInt32,), index)
end

function iio_create_default_context()
    ccall((:iio_create_default_context, libiio), Ptr{iio_context}, ())
end

function iio_create_local_context()
    ccall((:iio_create_local_context, libiio), Ptr{iio_context}, ())
end

function iio_create_xml_context(xml_file)
    ccall((:iio_create_xml_context, libiio), Ptr{iio_context}, (Cstring,), xml_file)
end

function iio_create_xml_context_mem(xml, len)
    ccall((:iio_create_xml_context_mem, libiio), Ptr{iio_context}, (Cstring, Csize_t), xml, len)
end

function iio_create_network_context(host)
    ccall((:iio_create_network_context, libiio), Ptr{iio_context}, (Cstring,), host)
end

function iio_create_context_from_uri(uri)
    ccall((:iio_create_context_from_uri, libiio), Ptr{iio_context}, (Cstring,), uri)
end

function iio_context_clone(ctx)
    ccall((:iio_context_clone, libiio), Ptr{iio_context}, (Ptr{iio_context},), ctx)
end

function iio_context_destroy(ctx)
    ccall((:iio_context_destroy, libiio), Cvoid, (Ptr{iio_context},), ctx)
end

function iio_context_get_version(ctx, major, minor, git_tag)
    ccall((:iio_context_get_version, libiio), Cint, (Ptr{iio_context}, Ptr{UInt32}, Ptr{UInt32}, Ptr{UInt8}), ctx, major, minor, git_tag)
end

function iio_context_get_xml(ctx)
    ccall((:iio_context_get_xml, libiio), Cstring, (Ptr{iio_context},), ctx)
end

function iio_context_get_name(ctx)
    ccall((:iio_context_get_name, libiio), Cstring, (Ptr{iio_context},), ctx)
end

function iio_context_get_description(ctx)
    ccall((:iio_context_get_description, libiio), Cstring, (Ptr{iio_context},), ctx)
end

function iio_context_get_attrs_count(ctx)
    ccall((:iio_context_get_attrs_count, libiio), UInt32, (Ptr{iio_context},), ctx)
end

function iio_context_get_attr(ctx, index, name, value)
    ccall((:iio_context_get_attr, libiio), Cint, (Ptr{iio_context}, UInt32, Ptr{Cstring}, Ptr{Cstring}), ctx, index, name, value)
end

function iio_context_get_attr_value(ctx, name)
    ccall((:iio_context_get_attr_value, libiio), Cstring, (Ptr{iio_context}, Cstring), ctx, name)
end

function iio_context_get_devices_count(ctx)
    ccall((:iio_context_get_devices_count, libiio), UInt32, (Ptr{iio_context},), ctx)
end

function iio_context_get_device(ctx, index)
    ccall((:iio_context_get_device, libiio), Ptr{iio_device}, (Ptr{iio_context}, UInt32), ctx, index)
end

function iio_context_find_device(ctx, name)
    ccall((:iio_context_find_device, libiio), Ptr{iio_device}, (Ptr{iio_context}, Cstring), ctx, name)
end

function iio_context_set_timeout(ctx, timeout_ms)
    ccall((:iio_context_set_timeout, libiio), Cint, (Ptr{iio_context}, UInt32), ctx, timeout_ms)
end

function iio_device_get_context(dev)
    ccall((:iio_device_get_context, libiio), Ptr{iio_context}, (Ptr{iio_device},), dev)
end

function iio_device_get_id(dev)
    ccall((:iio_device_get_id, libiio), Cstring, (Ptr{iio_device},), dev)
end

function iio_device_get_name(dev)
    ccall((:iio_device_get_name, libiio), Cstring, (Ptr{iio_device},), dev)
end

function iio_device_get_channels_count(dev)
    ccall((:iio_device_get_channels_count, libiio), UInt32, (Ptr{iio_device},), dev)
end

function iio_device_get_attrs_count(dev)
    ccall((:iio_device_get_attrs_count, libiio), UInt32, (Ptr{iio_device},), dev)
end

function iio_device_get_buffer_attrs_count(dev)
    ccall((:iio_device_get_buffer_attrs_count, libiio), UInt32, (Ptr{iio_device},), dev)
end

function iio_device_get_channel(dev, index)
    ccall((:iio_device_get_channel, libiio), Ptr{iio_channel}, (Ptr{iio_device}, UInt32), dev, index)
end

function iio_device_get_attr(dev, index)
    ccall((:iio_device_get_attr, libiio), Cstring, (Ptr{iio_device}, UInt32), dev, index)
end

function iio_device_get_buffer_attr(dev, index)
    ccall((:iio_device_get_buffer_attr, libiio), Cstring, (Ptr{iio_device}, UInt32), dev, index)
end

function iio_device_find_channel(dev, name, output)
    ccall((:iio_device_find_channel, libiio), Ptr{iio_channel}, (Ptr{iio_device}, Cstring, Bool), dev, name, output)
end

function iio_device_find_attr(dev, name)
    ccall((:iio_device_find_attr, libiio), Cstring, (Ptr{iio_device}, Cstring), dev, name)
end

function iio_device_find_buffer_attr(dev, name)
    ccall((:iio_device_find_buffer_attr, libiio), Cstring, (Ptr{iio_device}, Cstring), dev, name)
end

function iio_device_attr_read(dev, attr, dst, len)
    ccall((:iio_device_attr_read, libiio), ssize_t, (Ptr{iio_device}, Cstring, Cstring, Csize_t), dev, attr, dst, len)
end

function iio_device_attr_read_all(dev, cb, data)
    ccall((:iio_device_attr_read_all, libiio), Cint, (Ptr{iio_device}, Ptr{Cvoid}, Ptr{Cvoid}), dev, cb, data)
end

function iio_device_attr_read_bool(dev, attr, val)
    ccall((:iio_device_attr_read_bool, libiio), Cint, (Ptr{iio_device}, Cstring, Ptr{Bool}), dev, attr, val)
end

function iio_device_attr_read_longlong(dev, attr, val)
    ccall((:iio_device_attr_read_longlong, libiio), Cint, (Ptr{iio_device}, Cstring, Ptr{Clonglong}), dev, attr, val)
end

function iio_device_attr_read_double(dev, attr, val)
    ccall((:iio_device_attr_read_double, libiio), Cint, (Ptr{iio_device}, Cstring, Ptr{Cdouble}), dev, attr, val)
end

function iio_device_attr_write(dev, attr, src)
    ccall((:iio_device_attr_write, libiio), ssize_t, (Ptr{iio_device}, Cstring, Cstring), dev, attr, src)
end

function iio_device_attr_write_raw(dev, attr, src, len)
    ccall((:iio_device_attr_write_raw, libiio), ssize_t, (Ptr{iio_device}, Cstring, Ptr{Cvoid}, Csize_t), dev, attr, src, len)
end

function iio_device_attr_write_all(dev, cb, data)
    ccall((:iio_device_attr_write_all, libiio), Cint, (Ptr{iio_device}, Ptr{Cvoid}, Ptr{Cvoid}), dev, cb, data)
end

function iio_device_attr_write_bool(dev, attr, val)
    ccall((:iio_device_attr_write_bool, libiio), Cint, (Ptr{iio_device}, Cstring, Bool), dev, attr, val)
end

function iio_device_attr_write_longlong(dev, attr, val)
    ccall((:iio_device_attr_write_longlong, libiio), Cint, (Ptr{iio_device}, Cstring, Clonglong), dev, attr, val)
end

function iio_device_attr_write_double(dev, attr, val)
    ccall((:iio_device_attr_write_double, libiio), Cint, (Ptr{iio_device}, Cstring, Cdouble), dev, attr, val)
end

function iio_device_buffer_attr_read(dev, attr, dst, len)
    ccall((:iio_device_buffer_attr_read, libiio), ssize_t, (Ptr{iio_device}, Cstring, Cstring, Csize_t), dev, attr, dst, len)
end

function iio_device_buffer_attr_read_all(dev, cb, data)
    ccall((:iio_device_buffer_attr_read_all, libiio), Cint, (Ptr{iio_device}, Ptr{Cvoid}, Ptr{Cvoid}), dev, cb, data)
end

function iio_device_buffer_attr_read_bool(dev, attr, val)
    ccall((:iio_device_buffer_attr_read_bool, libiio), Cint, (Ptr{iio_device}, Cstring, Ptr{Bool}), dev, attr, val)
end

function iio_device_buffer_attr_read_longlong(dev, attr, val)
    ccall((:iio_device_buffer_attr_read_longlong, libiio), Cint, (Ptr{iio_device}, Cstring, Ptr{Clonglong}), dev, attr, val)
end

function iio_device_buffer_attr_read_double(dev, attr, val)
    ccall((:iio_device_buffer_attr_read_double, libiio), Cint, (Ptr{iio_device}, Cstring, Ptr{Cdouble}), dev, attr, val)
end

function iio_device_buffer_attr_write(dev, attr, src)
    ccall((:iio_device_buffer_attr_write, libiio), ssize_t, (Ptr{iio_device}, Cstring, Cstring), dev, attr, src)
end

function iio_device_buffer_attr_write_raw(dev, attr, src, len)
    ccall((:iio_device_buffer_attr_write_raw, libiio), ssize_t, (Ptr{iio_device}, Cstring, Ptr{Cvoid}, Csize_t), dev, attr, src, len)
end

function iio_device_buffer_attr_write_all(dev, cb, data)
    ccall((:iio_device_buffer_attr_write_all, libiio), Cint, (Ptr{iio_device}, Ptr{Cvoid}, Ptr{Cvoid}), dev, cb, data)
end

function iio_device_buffer_attr_write_bool(dev, attr, val)
    ccall((:iio_device_buffer_attr_write_bool, libiio), Cint, (Ptr{iio_device}, Cstring, Bool), dev, attr, val)
end

function iio_device_buffer_attr_write_longlong(dev, attr, val)
    ccall((:iio_device_buffer_attr_write_longlong, libiio), Cint, (Ptr{iio_device}, Cstring, Clonglong), dev, attr, val)
end

function iio_device_buffer_attr_write_double(dev, attr, val)
    ccall((:iio_device_buffer_attr_write_double, libiio), Cint, (Ptr{iio_device}, Cstring, Cdouble), dev, attr, val)
end

function iio_device_set_data(dev, data)
    ccall((:iio_device_set_data, libiio), Cvoid, (Ptr{iio_device}, Ptr{Cvoid}), dev, data)
end

function iio_device_get_data(dev)
    ccall((:iio_device_get_data, libiio), Ptr{Cvoid}, (Ptr{iio_device},), dev)
end

function iio_device_get_trigger(dev, trigger)
    ccall((:iio_device_get_trigger, libiio), Cint, (Ptr{iio_device}, Ptr{Ptr{iio_device}}), dev, trigger)
end

function iio_device_set_trigger(dev, trigger)
    ccall((:iio_device_set_trigger, libiio), Cint, (Ptr{iio_device}, Ptr{iio_device}), dev, trigger)
end

function iio_device_is_trigger(dev)
    ccall((:iio_device_is_trigger, libiio), Bool, (Ptr{iio_device},), dev)
end

function iio_device_set_kernel_buffers_count(dev, nb_buffers)
    ccall((:iio_device_set_kernel_buffers_count, libiio), Cint, (Ptr{iio_device}, UInt32), dev, nb_buffers)
end

function iio_channel_get_device(chn)
    ccall((:iio_channel_get_device, libiio), Ptr{iio_device}, (Ptr{iio_channel},), chn)
end

function iio_channel_get_id(chn)
    ccall((:iio_channel_get_id, libiio), Cstring, (Ptr{iio_channel},), chn)
end

function iio_channel_get_name(chn)
    ccall((:iio_channel_get_name, libiio), Cstring, (Ptr{iio_channel},), chn)
end

function iio_channel_is_output(chn)
    ccall((:iio_channel_is_output, libiio), Bool, (Ptr{iio_channel},), chn)
end

function iio_channel_is_scan_element(chn)
    ccall((:iio_channel_is_scan_element, libiio), Bool, (Ptr{iio_channel},), chn)
end

function iio_channel_get_attrs_count(chn)
    ccall((:iio_channel_get_attrs_count, libiio), UInt32, (Ptr{iio_channel},), chn)
end

function iio_channel_get_attr(chn, index)
    ccall((:iio_channel_get_attr, libiio), Cstring, (Ptr{iio_channel}, UInt32), chn, index)
end

function iio_channel_find_attr(chn, name)
    ccall((:iio_channel_find_attr, libiio), Cstring, (Ptr{iio_channel}, Cstring), chn, name)
end

function iio_channel_attr_get_filename(chn, attr)
    ccall((:iio_channel_attr_get_filename, libiio), Cstring, (Ptr{iio_channel}, Cstring), chn, attr)
end

function iio_channel_attr_read(chn, attr, dst, len)
    ccall((:iio_channel_attr_read, libiio), ssize_t, (Ptr{iio_channel}, Cstring, Cstring, Csize_t), chn, attr, dst, len)
end

function iio_channel_attr_read_all(chn, cb, data)
    ccall((:iio_channel_attr_read_all, libiio), Cint, (Ptr{iio_channel}, Ptr{Cvoid}, Ptr{Cvoid}), chn, cb, data)
end

function iio_channel_attr_read_bool(chn, attr, val)
    ccall((:iio_channel_attr_read_bool, libiio), Cint, (Ptr{iio_channel}, Cstring, Ptr{Bool}), chn, attr, val)
end

function iio_channel_attr_read_longlong(chn, attr, val)
    ccall((:iio_channel_attr_read_longlong, libiio), Cint, (Ptr{iio_channel}, Cstring, Ptr{Clonglong}), chn, attr, val)
end

function iio_channel_attr_read_double(chn, attr, val)
    ccall((:iio_channel_attr_read_double, libiio), Cint, (Ptr{iio_channel}, Cstring, Ptr{Cdouble}), chn, attr, val)
end

function iio_channel_attr_write(chn, attr, src)
    ccall((:iio_channel_attr_write, libiio), ssize_t, (Ptr{iio_channel}, Cstring, Cstring), chn, attr, src)
end

function iio_channel_attr_write_raw(chn, attr, src, len)
    ccall((:iio_channel_attr_write_raw, libiio), ssize_t, (Ptr{iio_channel}, Cstring, Ptr{Cvoid}, Csize_t), chn, attr, src, len)
end

function iio_channel_attr_write_all(chn, cb, data)
    ccall((:iio_channel_attr_write_all, libiio), Cint, (Ptr{iio_channel}, Ptr{Cvoid}, Ptr{Cvoid}), chn, cb, data)
end

function iio_channel_attr_write_bool(chn, attr, val)
    ccall((:iio_channel_attr_write_bool, libiio), Cint, (Ptr{iio_channel}, Cstring, Bool), chn, attr, val)
end

function iio_channel_attr_write_longlong(chn, attr, val)
    ccall((:iio_channel_attr_write_longlong, libiio), Cint, (Ptr{iio_channel}, Cstring, Clonglong), chn, attr, val)
end

function iio_channel_attr_write_double(chn, attr, val)
    ccall((:iio_channel_attr_write_double, libiio), Cint, (Ptr{iio_channel}, Cstring, Cdouble), chn, attr, val)
end

function iio_channel_enable(chn)
    ccall((:iio_channel_enable, libiio), Cvoid, (Ptr{iio_channel},), chn)
end

function iio_channel_disable(chn)
    ccall((:iio_channel_disable, libiio), Cvoid, (Ptr{iio_channel},), chn)
end

function iio_channel_is_enabled(chn)
    ccall((:iio_channel_is_enabled, libiio), Bool, (Ptr{iio_channel},), chn)
end

function iio_channel_read_raw(chn, buffer, dst, len)
    ccall((:iio_channel_read_raw, libiio), Csize_t, (Ptr{iio_channel}, Ptr{iio_buffer}, Ptr{Cvoid}, Csize_t), chn, buffer, dst, len)
end

function iio_channel_read(chn, buffer, dst, len)
    ccall((:iio_channel_read, libiio), Csize_t, (Ptr{iio_channel}, Ptr{iio_buffer}, Ptr{Cvoid}, Csize_t), chn, buffer, dst, len)
end

function iio_channel_write_raw(chn, buffer, src, len)
    ccall((:iio_channel_write_raw, libiio), Csize_t, (Ptr{iio_channel}, Ptr{iio_buffer}, Ptr{Cvoid}, Csize_t), chn, buffer, src, len)
end

function iio_channel_write(chn, buffer, src, len)
    ccall((:iio_channel_write, libiio), Csize_t, (Ptr{iio_channel}, Ptr{iio_buffer}, Ptr{Cvoid}, Csize_t), chn, buffer, src, len)
end

function iio_channel_set_data(chn, data)
    ccall((:iio_channel_set_data, libiio), Cvoid, (Ptr{iio_channel}, Ptr{Cvoid}), chn, data)
end

function iio_channel_get_data(chn)
    ccall((:iio_channel_get_data, libiio), Ptr{Cvoid}, (Ptr{iio_channel},), chn)
end

function iio_channel_get_type(chn)
    ccall((:iio_channel_get_type, libiio), iio_chan_type, (Ptr{iio_channel},), chn)
end

function iio_channel_get_modifier(chn)
    ccall((:iio_channel_get_modifier, libiio), iio_modifier, (Ptr{iio_channel},), chn)
end

function iio_buffer_get_device(buf)
    ccall((:iio_buffer_get_device, libiio), Ptr{iio_device}, (Ptr{iio_buffer},), buf)
end

function iio_device_create_buffer(dev, samples_count, cyclic)
    ccall((:iio_device_create_buffer, libiio), Ptr{iio_buffer}, (Ptr{iio_device}, Csize_t, Bool), dev, samples_count, cyclic)
end

function iio_buffer_destroy(buf)
    ccall((:iio_buffer_destroy, libiio), Cvoid, (Ptr{iio_buffer},), buf)
end

function iio_buffer_get_poll_fd(buf)
    ccall((:iio_buffer_get_poll_fd, libiio), Cint, (Ptr{iio_buffer},), buf)
end

function iio_buffer_set_blocking_mode(buf, blocking)
    ccall((:iio_buffer_set_blocking_mode, libiio), Cint, (Ptr{iio_buffer}, Bool), buf, blocking)
end

function iio_buffer_refill(buf)
    ccall((:iio_buffer_refill, libiio), ssize_t, (Ptr{iio_buffer},), buf)
end

function iio_buffer_push(buf)
    ccall((:iio_buffer_push, libiio), ssize_t, (Ptr{iio_buffer},), buf)
end

function iio_buffer_push_partial(buf, samples_count)
    ccall((:iio_buffer_push_partial, libiio), ssize_t, (Ptr{iio_buffer}, Csize_t), buf, samples_count)
end

function iio_buffer_cancel(buf)
    ccall((:iio_buffer_cancel, libiio), Cvoid, (Ptr{iio_buffer},), buf)
end

function iio_buffer_start(buf)
    ccall((:iio_buffer_start, libiio), Ptr{Cvoid}, (Ptr{iio_buffer},), buf)
end

function iio_buffer_first(buf, chn)
    ccall((:iio_buffer_first, libiio), Ptr{Cvoid}, (Ptr{iio_buffer}, Ptr{iio_channel}), buf, chn)
end

function iio_buffer_step(buf)
    ccall((:iio_buffer_step, libiio), Cptrdiff_t, (Ptr{iio_buffer},), buf)
end

function iio_buffer_end(buf)
    ccall((:iio_buffer_end, libiio), Ptr{Cvoid}, (Ptr{iio_buffer},), buf)
end

function iio_buffer_foreach_sample(buf, callback, data)
    ccall((:iio_buffer_foreach_sample, libiio), ssize_t, (Ptr{iio_buffer}, Ptr{Cvoid}, Ptr{Cvoid}), buf, callback, data)
end

function iio_buffer_set_data(buf, data)
    ccall((:iio_buffer_set_data, libiio), Cvoid, (Ptr{iio_buffer}, Ptr{Cvoid}), buf, data)
end

function iio_buffer_get_data(buf)
    ccall((:iio_buffer_get_data, libiio), Ptr{Cvoid}, (Ptr{iio_buffer},), buf)
end

function iio_device_get_sample_size(dev)
    ccall((:iio_device_get_sample_size, libiio), ssize_t, (Ptr{iio_device},), dev)
end

function iio_channel_get_index(chn)
    ccall((:iio_channel_get_index, libiio), Clong, (Ptr{iio_channel},), chn)
end

function iio_channel_get_data_format(chn)
    ccall((:iio_channel_get_data_format, libiio), Ptr{iio_data_format}, (Ptr{iio_channel},), chn)
end

function iio_channel_convert(chn, dst, src)
    ccall((:iio_channel_convert, libiio), Cvoid, (Ptr{iio_channel}, Ptr{Cvoid}, Ptr{Cvoid}), chn, dst, src)
end

function iio_channel_convert_inverse(chn, dst, src)
    ccall((:iio_channel_convert_inverse, libiio), Cvoid, (Ptr{iio_channel}, Ptr{Cvoid}, Ptr{Cvoid}), chn, dst, src)
end

function iio_device_get_debug_attrs_count(dev)
    ccall((:iio_device_get_debug_attrs_count, libiio), UInt32, (Ptr{iio_device},), dev)
end

function iio_device_get_debug_attr(dev, index)
    ccall((:iio_device_get_debug_attr, libiio), Cstring, (Ptr{iio_device}, UInt32), dev, index)
end

function iio_device_find_debug_attr(dev, name)
    ccall((:iio_device_find_debug_attr, libiio), Cstring, (Ptr{iio_device}, Cstring), dev, name)
end

function iio_device_debug_attr_read(dev, attr, dst, len)
    ccall((:iio_device_debug_attr_read, libiio), ssize_t, (Ptr{iio_device}, Cstring, Cstring, Csize_t), dev, attr, dst, len)
end

function iio_device_debug_attr_read_all(dev, cb, data)
    ccall((:iio_device_debug_attr_read_all, libiio), Cint, (Ptr{iio_device}, Ptr{Cvoid}, Ptr{Cvoid}), dev, cb, data)
end

function iio_device_debug_attr_write(dev, attr, src)
    ccall((:iio_device_debug_attr_write, libiio), ssize_t, (Ptr{iio_device}, Cstring, Cstring), dev, attr, src)
end

function iio_device_debug_attr_write_raw(dev, attr, src, len)
    ccall((:iio_device_debug_attr_write_raw, libiio), ssize_t, (Ptr{iio_device}, Cstring, Ptr{Cvoid}, Csize_t), dev, attr, src, len)
end

function iio_device_debug_attr_write_all(dev, cb, data)
    ccall((:iio_device_debug_attr_write_all, libiio), Cint, (Ptr{iio_device}, Ptr{Cvoid}, Ptr{Cvoid}), dev, cb, data)
end

function iio_device_debug_attr_read_bool(dev, attr, val)
    ccall((:iio_device_debug_attr_read_bool, libiio), Cint, (Ptr{iio_device}, Cstring, Ptr{Bool}), dev, attr, val)
end

function iio_device_debug_attr_read_longlong(dev, attr, val)
    ccall((:iio_device_debug_attr_read_longlong, libiio), Cint, (Ptr{iio_device}, Cstring, Ptr{Clonglong}), dev, attr, val)
end

function iio_device_debug_attr_read_double(dev, attr, val)
    ccall((:iio_device_debug_attr_read_double, libiio), Cint, (Ptr{iio_device}, Cstring, Ptr{Cdouble}), dev, attr, val)
end

function iio_device_debug_attr_write_bool(dev, attr, val)
    ccall((:iio_device_debug_attr_write_bool, libiio), Cint, (Ptr{iio_device}, Cstring, Bool), dev, attr, val)
end

function iio_device_debug_attr_write_longlong(dev, attr, val)
    ccall((:iio_device_debug_attr_write_longlong, libiio), Cint, (Ptr{iio_device}, Cstring, Clonglong), dev, attr, val)
end

function iio_device_debug_attr_write_double(dev, attr, val)
    ccall((:iio_device_debug_attr_write_double, libiio), Cint, (Ptr{iio_device}, Cstring, Cdouble), dev, attr, val)
end

function iio_device_identify_filename(dev, filename, chn, attr)
    ccall((:iio_device_identify_filename, libiio), Cint, (Ptr{iio_device}, Cstring, Ptr{Ptr{iio_channel}}, Ptr{Cstring}), dev, filename, chn, attr)
end

function iio_device_reg_write(dev, address, value)
    ccall((:iio_device_reg_write, libiio), Cint, (Ptr{iio_device}, UInt32, UInt32), dev, address, value)
end

function iio_device_reg_read(dev, address, value)
    ccall((:iio_device_reg_read, libiio), Cint, (Ptr{iio_device}, UInt32, Ptr{UInt32}), dev, address, value)
end
