# Palkeoramix decompiler. 

def _fallback() payable: # default function
  revert

def swap(address _param1, address _param2) payable: 
  require calldata.size - 4 >=ΓÇ▓ 64
  require _param1 == _param1
  require _param2 == _param2
  require caller == 0x189cf534de3097c08b6beaf6eb2b9179dab122d1
  require ext_code.size(0xde1e704dae0b4051e80dabb26ab6ad6c12262da0)
  call 0xde1e704dae0b4051e80dabb26ab6ad6c12262da0.approve(address spender, uint256 tokens) with:
       gas gas_remaining wei
      args addr(_param2), -1
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require ext_code.size(0xde1e704dae0b4051e80dabb26ab6ad6c12262da0)
  call 0xde1e704dae0b4051e80dabb26ab6ad6c12262da0.burnFrom(address from, uint256 value) with:
       gas gas_remaining wei
      args addr(_param2), 0
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  static call 0xde1e704dae0b4051e80dabb26ab6ad6c12262da0.balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args _param2
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[0]
  if ext_call.return_data > ext_call.return_data[0]:
      revert with 'NH{q', 17
  require ext_code.size(0xde1e704dae0b4051e80dabb26ab6ad6c12262da0)
  call 0xde1e704dae0b4051e80dabb26ab6ad6c12262da0.transferFrom(address from, address to, uint256 tokens) with:
       gas gas_remaining wei
      args addr(_param2), addr(this.address), ext_call.return_data[0] - 1
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require ext_code.size(_param2)
  call _param2.0xfff6cae9 with:
       gas gas_remaining wei
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  static call 0xde1e704dae0b4051e80dabb26ab6ad6c12262da0.balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args this.address
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[0]
  static call _param2.0xf140a35a with:
          gas gas_remaining wei
         args ext_call.return_data[0], 0xde1e704dae0b4051e80dabb26ab6ad6c12262da0
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[0]
  call 0xde1e704dae0b4051e80dabb26ab6ad6c12262da0.transfer(address to, uint256 tokens) with:
       gas gas_remaining wei
      args addr(_param2), ext_call.return_data[0]
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == bool(ext_call.return_data[0])
  call _param2.0xdfe1681 with:
       gas gas_remaining wei
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[12 len 20]
  if not ext_call.return_data_param1:
      require ext_code.size(_param2)
      call _param2.0x22c0d9f with:
           gas gas_remaining wei
          args ext_call.return_data[0], 0, 0x189cf534de3097c08b6beaf6eb2b9179dab122d1, 128, 0
  else:
      call _param2.token1() with:
           gas gas_remaining wei
      if not ext_call.success:
          revert with ext_call.return_data[0 len return_data.size]
      require return_data.size >=ΓÇ▓ 32
      require ext_call.return_data == ext_call.return_data[12 len 20]
      require ext_call.return_data == _param1
      require ext_code.size(_param2)
      call _param2.0x22c0d9f with:
           gas gas_remaining wei
          args 0, ext_call.return_data[0], 0x189cf534de3097c08b6beaf6eb2b9179dab122d1, 128, 0
  if not ext_call.success:
      revert with ext_call.return_data[0 len return_data.size]
  static call _param1.balanceOf(address tokenOwner) with:
          gas gas_remaining wei
         args 0x189cf534de3097c08b6beaf6eb2b9179dab122d1
  require return_data.size >=ΓÇ▓ 32
  require ext_call.return_data == ext_call.return_data[0]
  require ext_call.return_data >= ext_call.return_data[0]


