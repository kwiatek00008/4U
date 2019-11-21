using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Metody_2
{
    class Program
    {
        static void wypisz()//wypisze to co w metodzie
        {
            Console.WriteLine("xxx");
        }
        static void wypisz(string text)//wypisze to co w main
        {
            Console.WriteLine(text);
        }
        static void przywitaj(string s="Witam Pana")
        {
            Console.WriteLine(s);//wypisze s="Witam Pana"
        }
        static void MetodaConsoleColor(string text, ConsoleColor kolor=ConsoleColor.DarkRed)
        {
            ConsoleColor bieżącyKolor = Console.ForegroundColor;
            Console.ForegroundColor = kolor;
            Console.WriteLine(text);
            Console.ForegroundColor = bieżącyKolor;
        }
        static private void zwieksz(ref int liczba)
        {
            liczba = liczba + 100;
            Console.WriteLine("Po zwiekszeniu: " + liczba);
        }
        static void Main(string[] args)
        {
            int x=0;
            wypisz();
            wypisz("NO CZESC");
            przywitaj();
            MetodaConsoleColor("xxxss",ConsoleColor.DarkYellow);//wypisze na żółto
            zwieksz(ref x); //x=100 
            zwieksz(ref x); //x=200
            Console.ReadKey();
        }
    }
}
