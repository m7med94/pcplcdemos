Module Module1
    Public Function SetBit(ByVal InByte As Byte, ByVal Bit As Byte) As Byte
        'Set het n'de bit of van InByte

        SetBit = InByte Or (2 ^ Bit)  'Set het n'de Bit

    End Function
    Public Function ClearBit(ByVal InByte As Byte, ByVal Bit As Byte) As Byte
        'Clear het n'de bit of van InByte

        ClearBit = InByte And Not (2 ^ Bit) 'Clear het n'de Bit

    End Function

    Public Function IsBitSet(ByVal InByte As Byte, ByVal Bit As Byte) As Boolean
        'Is het n'de bit van InByte gezet of niet?

        IsBitSet = ((InByte And (2 ^ Bit)) > 0)

    End Function
    Public Function ToggleBit(ByVal InByte As Byte, ByVal Bit As Byte) As Byte
        'Toggle'ed het n'de van InByte

        ToggleBit = InByte Xor (2 ^ Bit)

    End Function
End Module
