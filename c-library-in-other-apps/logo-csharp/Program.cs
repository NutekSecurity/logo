using System;
using System.Runtime.InteropServices;

class Program
{
    [DllImport("../../liblogo.dylib")]
    public static extern IntPtr logo_black();

    static void Main()
    {
        string? logoBlackString = Marshal.PtrToStringAnsi(logo_black());
        Console.WriteLine(logoBlackString);
    }
}
