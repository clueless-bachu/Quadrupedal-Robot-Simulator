# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from deeprl/State.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class State(genpy.Message):
  _md5sum = "342a3f14758aa4591390d3a42f7f92a4"
  _type = "deeprl/State"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """Header header
float64 error_dist
float64 error_angle
float64 x
float64 y
float64 z
float64 dx
float64 dy
float64 dz
float64 roll
float64 pitch
float64 yaw
float64 droll
float64 dpitch
float64 dyaw
float64 flj
float64 fltl
float64 flbl
float64 frj
float64 frtl
float64 frbl
float64 blj
float64 bltl
float64 blbl
float64 brj
float64 brtl
float64 brbl
float64 dflj
float64 dfltl
float64 dflbl
float64 dfrj
float64 dfrtl
float64 dfrbl
float64 dblj
float64 dbltl
float64 dblbl
float64 dbrj
float64 dbrtl
float64 dbrbl

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id
"""
  __slots__ = ['header','error_dist','error_angle','x','y','z','dx','dy','dz','roll','pitch','yaw','droll','dpitch','dyaw','flj','fltl','flbl','frj','frtl','frbl','blj','bltl','blbl','brj','brtl','brbl','dflj','dfltl','dflbl','dfrj','dfrtl','dfrbl','dblj','dbltl','dblbl','dbrj','dbrtl','dbrbl']
  _slot_types = ['std_msgs/Header','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,error_dist,error_angle,x,y,z,dx,dy,dz,roll,pitch,yaw,droll,dpitch,dyaw,flj,fltl,flbl,frj,frtl,frbl,blj,bltl,blbl,brj,brtl,brbl,dflj,dfltl,dflbl,dfrj,dfrtl,dfrbl,dblj,dbltl,dblbl,dbrj,dbrtl,dbrbl

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(State, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.error_dist is None:
        self.error_dist = 0.
      if self.error_angle is None:
        self.error_angle = 0.
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.z is None:
        self.z = 0.
      if self.dx is None:
        self.dx = 0.
      if self.dy is None:
        self.dy = 0.
      if self.dz is None:
        self.dz = 0.
      if self.roll is None:
        self.roll = 0.
      if self.pitch is None:
        self.pitch = 0.
      if self.yaw is None:
        self.yaw = 0.
      if self.droll is None:
        self.droll = 0.
      if self.dpitch is None:
        self.dpitch = 0.
      if self.dyaw is None:
        self.dyaw = 0.
      if self.flj is None:
        self.flj = 0.
      if self.fltl is None:
        self.fltl = 0.
      if self.flbl is None:
        self.flbl = 0.
      if self.frj is None:
        self.frj = 0.
      if self.frtl is None:
        self.frtl = 0.
      if self.frbl is None:
        self.frbl = 0.
      if self.blj is None:
        self.blj = 0.
      if self.bltl is None:
        self.bltl = 0.
      if self.blbl is None:
        self.blbl = 0.
      if self.brj is None:
        self.brj = 0.
      if self.brtl is None:
        self.brtl = 0.
      if self.brbl is None:
        self.brbl = 0.
      if self.dflj is None:
        self.dflj = 0.
      if self.dfltl is None:
        self.dfltl = 0.
      if self.dflbl is None:
        self.dflbl = 0.
      if self.dfrj is None:
        self.dfrj = 0.
      if self.dfrtl is None:
        self.dfrtl = 0.
      if self.dfrbl is None:
        self.dfrbl = 0.
      if self.dblj is None:
        self.dblj = 0.
      if self.dbltl is None:
        self.dbltl = 0.
      if self.dblbl is None:
        self.dblbl = 0.
      if self.dbrj is None:
        self.dbrj = 0.
      if self.dbrtl is None:
        self.dbrtl = 0.
      if self.dbrbl is None:
        self.dbrbl = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.error_dist = 0.
      self.error_angle = 0.
      self.x = 0.
      self.y = 0.
      self.z = 0.
      self.dx = 0.
      self.dy = 0.
      self.dz = 0.
      self.roll = 0.
      self.pitch = 0.
      self.yaw = 0.
      self.droll = 0.
      self.dpitch = 0.
      self.dyaw = 0.
      self.flj = 0.
      self.fltl = 0.
      self.flbl = 0.
      self.frj = 0.
      self.frtl = 0.
      self.frbl = 0.
      self.blj = 0.
      self.bltl = 0.
      self.blbl = 0.
      self.brj = 0.
      self.brtl = 0.
      self.brbl = 0.
      self.dflj = 0.
      self.dfltl = 0.
      self.dflbl = 0.
      self.dfrj = 0.
      self.dfrtl = 0.
      self.dfrbl = 0.
      self.dblj = 0.
      self.dbltl = 0.
      self.dblbl = 0.
      self.dbrj = 0.
      self.dbrtl = 0.
      self.dbrbl = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_38d().pack(_x.error_dist, _x.error_angle, _x.x, _x.y, _x.z, _x.dx, _x.dy, _x.dz, _x.roll, _x.pitch, _x.yaw, _x.droll, _x.dpitch, _x.dyaw, _x.flj, _x.fltl, _x.flbl, _x.frj, _x.frtl, _x.frbl, _x.blj, _x.bltl, _x.blbl, _x.brj, _x.brtl, _x.brbl, _x.dflj, _x.dfltl, _x.dflbl, _x.dfrj, _x.dfrtl, _x.dfrbl, _x.dblj, _x.dbltl, _x.dblbl, _x.dbrj, _x.dbrtl, _x.dbrbl))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 304
      (_x.error_dist, _x.error_angle, _x.x, _x.y, _x.z, _x.dx, _x.dy, _x.dz, _x.roll, _x.pitch, _x.yaw, _x.droll, _x.dpitch, _x.dyaw, _x.flj, _x.fltl, _x.flbl, _x.frj, _x.frtl, _x.frbl, _x.blj, _x.bltl, _x.blbl, _x.brj, _x.brtl, _x.brbl, _x.dflj, _x.dfltl, _x.dflbl, _x.dfrj, _x.dfrtl, _x.dfrbl, _x.dblj, _x.dbltl, _x.dblbl, _x.dbrj, _x.dbrtl, _x.dbrbl,) = _get_struct_38d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_38d().pack(_x.error_dist, _x.error_angle, _x.x, _x.y, _x.z, _x.dx, _x.dy, _x.dz, _x.roll, _x.pitch, _x.yaw, _x.droll, _x.dpitch, _x.dyaw, _x.flj, _x.fltl, _x.flbl, _x.frj, _x.frtl, _x.frbl, _x.blj, _x.bltl, _x.blbl, _x.brj, _x.brtl, _x.brbl, _x.dflj, _x.dfltl, _x.dflbl, _x.dfrj, _x.dfrtl, _x.dfrbl, _x.dblj, _x.dbltl, _x.dblbl, _x.dbrj, _x.dbrtl, _x.dbrbl))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 304
      (_x.error_dist, _x.error_angle, _x.x, _x.y, _x.z, _x.dx, _x.dy, _x.dz, _x.roll, _x.pitch, _x.yaw, _x.droll, _x.dpitch, _x.dyaw, _x.flj, _x.fltl, _x.flbl, _x.frj, _x.frtl, _x.frbl, _x.blj, _x.bltl, _x.blbl, _x.brj, _x.brtl, _x.brbl, _x.dflj, _x.dfltl, _x.dflbl, _x.dfrj, _x.dfrtl, _x.dfrbl, _x.dblj, _x.dbltl, _x.dblbl, _x.dbrj, _x.dbrtl, _x.dbrbl,) = _get_struct_38d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_38d = None
def _get_struct_38d():
    global _struct_38d
    if _struct_38d is None:
        _struct_38d = struct.Struct("<38d")
    return _struct_38d
