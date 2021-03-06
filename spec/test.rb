class Test
  include PackedStruct

  struct_layout :something do
    little_endian signed size[32] # defaults to a number of size 32.
                                  # also the same as: `little_endian signed long size`
    little_endian signed packet_id[32]
    #little_endian signed packet_type[32]
    little_endian sint32 packet_type
    little_endian signed options[8]
    string body[size]
    null
  end
end
