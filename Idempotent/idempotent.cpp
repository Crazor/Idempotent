#include <iostream>
#include <vector>

using namespace std;

extern "C" int idempotentCpp(int n) {
    int _n = n *(-1);
    int erg = 0;
    
    for (int a=_n; a<=n; a++){
        for (int b =_n; b<=n; b++){
            for (int c =_n; c<=n; c++){
                for (int d =_n; d<=n; d++){
                    for (int e =_n; e<=n; e++){
                        for (int f =_n; f<=n; f++){
                            for (int g =_n; g<=n; g++){
                                for (int h =_n; h<=n; h++){
                                    for (int i =_n; i<=n; i++){
                                        if (a != a*a + b*d + c*g) continue;
                                        if (b != a*b + b*e + c*h) continue;
                                        if (c != a*c + b*f + c*i) continue;
                                        if (d != d*a + e*d + f*g) continue;
                                        if (e != d*b + e*e + f*h) continue;
                                        if (f != d*c + e*f + f*i) continue;
                                        if (g != g*a + h*d + i*g) continue;
                                        if (h != g*b + h*e + i*h) continue;
                                        if (i != g*c + h*f + i*i) continue;
                                        erg++;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    return erg;
}
