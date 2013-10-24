#import "YAVDSPSample01.h"

@implementation YAVDSPSample01



// ----------------------------------------------------------------------------------------------------
// テスト実行
//
+ (void) test
{
    NSLog(@"==================== 入れ替え ====================");
    [self _vDSP_vswap];
    [self _vDSP_vswapD];
    NSLog(@"\n");
    NSLog(@"\n");
    NSLog(@"==================== 反転 ====================");
    [self _vDSP_vrvrs];
    [self _vDSP_vrvrsD];
    NSLog(@"\n");
    NSLog(@"\n");
    NSLog(@"==================== ソート ====================");
    [self _vDSP_vsort];
    [self _vDSP_vsortD];
    NSLog(@"\n");
    NSLog(@"\n");
    NSLog(@"==================== インデックスソート ====================");
    [self _vDSP_vsorti];
    [self _vDSP_vsortiD];
    
    NSLog(@"\n");
    NSLog(@"\n");
    NSLog(@"==================== 値埋め ====================");
    [self _vDSP_vfill];
    [self _vDSP_vfillD];
    [self _vDSP_vfilli];
    NSLog(@"\n");
    NSLog(@"\n");
    NSLog(@"==================== 値消去 ====================");
    [self _vDSP_vclr];
    [self _vDSP_vclrD];
    
    
    NSLog(@"\n");
    NSLog(@"\n");
    NSLog(@"==================== 正の絶対値 ====================");
    [self _vDSP_vabs];
    [self _vDSP_vabsD];
    [self _vDSP_vabsi];
    NSLog(@"\n");
    NSLog(@"\n");
    NSLog(@"==================== 負の絶対値 ====================");
    [self _vDSP_vnabs];
    [self _vDSP_vnabsD];
    NSLog(@"\n");
    NSLog(@"\n");
    NSLog(@"==================== 符号反転 ====================");
    [self _vDSP_vneg];
    [self _vDSP_vnegD];
    NSLog(@"\n");
    NSLog(@"\n");
    NSLog(@"==================== 小数部 ====================");
    [self _vDSP_vfrac];
    [self _vDSP_vfracD];
    
    
    NSLog(@"\n");
    NSLog(@"\n");
    NSLog(@"==================== 符号なし二乗 ====================");
    [self _vDSP_vsq];
    [self _vDSP_vsqD];
    NSLog(@"\n");
    NSLog(@"\n");
    NSLog(@"==================== 符号あり二乗 ====================");
    [self _vDSP_vssq];
    [self _vDSP_vssqD];
    
    
    
}


// ----------------------------------------------------------------------------------------------------
// 入れ替え
//
+ (void) _vDSP_vswap
{
    float array1[5] = {0, 1, 2, 3, 4};
    float array2[5] = {5, 6, 7, 8, 9};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vswap --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"array1: "];
    [YAVDSPSampleLog nsLogFloat:array2 length:5 label:@"array2: "];
    
    vDSP_vswap(array1, 1, array2, 1, 5);
    
    NSLog(@"[After]");
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"array1: "];
    [YAVDSPSampleLog nsLogFloat:array2 length:5 label:@"array2: "];
}
+ (void) _vDSP_vswapD
{
    double array1[5] = {0, 1, 2, 3, 4};
    double array2[5] = {5, 6, 7, 8, 9};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vswapD --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"array1: "];
    [YAVDSPSampleLog nsLogDouble:array2 length:5 label:@"array2: "];
    
    vDSP_vswapD(array1, 1, array2, 1, 5);
    
    NSLog(@"[After]");
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"array1: "];
    [YAVDSPSampleLog nsLogDouble:array2 length:5 label:@"array2: "];
}


// ----------------------------------------------------------------------------------------------------
// 反転
//
+ (void) _vDSP_vrvrs
{
    float array1[5] = {0, 1, 2, 3, 4};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vrvrs --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"array1: "];
    
    vDSP_vrvrs(array1, 1, 5);
    
    NSLog(@"[After]");
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"array1: "];
}
+ (void) _vDSP_vrvrsD
{
    double array1[5] = {0, 1, 2, 3, 4};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vrvrsD --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"array1: "];
    
    vDSP_vrvrsD(array1, 1, 5);
    
    NSLog(@"[After]");
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"array1: "];
}


// ----------------------------------------------------------------------------------------------------
// ソート
//
+ (void) _vDSP_vsort
{
    float array1[5] = {4, 2, 3, 0, 1};
    float array2[5] = {4, 2, 3, 0, 1};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vsort --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"ascend: "];
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"descend: "];
    
    vDSP_vsort(array1, 5, 1);
    vDSP_vsort(array2, 5, -1);
    
    NSLog(@"[After]");
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"ascend: "];
    [YAVDSPSampleLog nsLogFloat:array2 length:5 label:@"descend: "];
}
+ (void) _vDSP_vsortD
{
    double array1[5] = {4, 2, 3, 0, 1};
    double array2[5] = {4, 2, 3, 0, 1};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vsortD --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"ascend: "];
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"descend: "];
    
    vDSP_vsortD(array1, 5, 1);
    vDSP_vsortD(array2, 5, -1);
    
    NSLog(@"[After]");
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"ascend: "];
    [YAVDSPSampleLog nsLogDouble:array2 length:5 label:@"descend: "];
}


// ----------------------------------------------------------------------------------------------------
// インデックスソート
//
+ (void) _vDSP_vsorti
{
    float array1[5] = {4, 2, 3, 0, 1};
    float array2[5] = {4, 2, 3, 0, 1};
    vDSP_Length index1[5] = {0, 1, 2, 3, 4};
    vDSP_Length index2[5] = {0, 1, 2, 3, 4};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vsorti --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"ascend: "];
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"descend: "];
    [YAVDSPSampleLog nsLogLength:index1 length:5 label:@"ascendIndex: "];
    [YAVDSPSampleLog nsLogLength:index2 length:5 label:@"descendIndex: "];
    
    vDSP_vsorti(array1, index1, NULL, 5, 1);
    vDSP_vsorti(array2, index2, NULL, 5, -1);
    
    NSLog(@"[After]");
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"ascend: "];
    [YAVDSPSampleLog nsLogFloat:array2 length:5 label:@"descend: "];
    [YAVDSPSampleLog nsLogLength:index1 length:5 label:@"ascendIndex: "];
    [YAVDSPSampleLog nsLogLength:index2 length:5 label:@"descendIndex: "];
}
+ (void) _vDSP_vsortiD
{
    double array1[5] = {4, 2, 3, 0, 1};
    double array2[5] = {4, 2, 3, 0, 1};
    vDSP_Length index1[5] = {0, 1, 2, 3, 4};
    vDSP_Length index2[5] = {0, 1, 2, 3, 4};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vsortiD --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"ascend: "];
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"descend: "];
    [YAVDSPSampleLog nsLogLength:index1 length:5 label:@"ascendIndex: "];
    [YAVDSPSampleLog nsLogLength:index2 length:5 label:@"descendIndex: "];
    
    vDSP_vsortiD(array1, index1, NULL, 5, 1);
    vDSP_vsortiD(array2, index2, NULL, 5, -1);
    
    NSLog(@"[After]");
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"ascend: "];
    [YAVDSPSampleLog nsLogDouble:array2 length:5 label:@"descend: "];
    [YAVDSPSampleLog nsLogLength:index1 length:5 label:@"ascendIndex: "];
    [YAVDSPSampleLog nsLogLength:index2 length:5 label:@"descendIndex: "];
}


// ----------------------------------------------------------------------------------------------------
// 値埋め
//
+ (void) _vDSP_vfill
{
    float array1[5] = {0, 0, 0, 0, 0};
    float value = 42.195;
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vfill --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"array1: "];
    [YAVDSPSampleLog nsLogFloat:&value length:1 label:@"value : "];
    
    vDSP_vfill(&value, array1, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"array1: "];
}
+ (void) _vDSP_vfillD
{
    double array1[5] = {0, 0, 0, 0, 0};
    double value = 42.195;
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vfillD --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"array1: "];
    [YAVDSPSampleLog nsLogDouble:&value length:1 label:@"value : "];
    
    vDSP_vfillD(&value, array1, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"array1: "];
}
+ (void) _vDSP_vfilli
{
    int array1[5] = {0, 0, 0, 0, 0};
    int value = 42;
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vfillD --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogInt:array1 length:5 label:@"array1: "];
    [YAVDSPSampleLog nsLogInt:&value length:1 label:@"value : "];
    
    vDSP_vfilli(&value, array1, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogInt:array1 length:5 label:@"array1: "];
}


// ----------------------------------------------------------------------------------------------------
// 値消去
//
+ (void) _vDSP_vclr
{
    float array1[5] = {1, 2, 3, 4, 5};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vclr --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"array1: "];
    
    vDSP_vclr(array1, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"array1: "];
}
+ (void) _vDSP_vclrD
{
    double array1[5] = {1, 2, 3, 4, 5};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vclrD --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"array1: "];
    
    vDSP_vclrD(array1, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"array1: "];
}


// ----------------------------------------------------------------------------------------------------
// 正の絶対値
//
+ (void) _vDSP_vabs
{
    float array1[5] = {-1, 2, -3, 4, -5};
    float array2[5] = {0, 0, 0, 0, 0};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vabs --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"array1: "];
    
    vDSP_vabs(array1, 1, array2, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogFloat:array2 length:5 label:@"array2: "];
}
+ (void) _vDSP_vabsD
{
    double array1[5] = {-1, 2, -3, 4, -5};
    double array2[5] = {0, 0, 0, 0, 0};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vabsD --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"array1: "];
    
    vDSP_vabsD(array1, 1, array2, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogDouble:array2 length:5 label:@"array2: "];
}
+ (void) _vDSP_vabsi
{
    int array1[5] = {-1, 2, -3, 4, -5};
    int array2[5] = {0, 0, 0, 0, 0};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vabsi --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogInt:array1 length:5 label:@"array1: "];
    
    vDSP_vabsi(array1, 1, array2, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogInt:array2 length:5 label:@"array2: "];
}



// ----------------------------------------------------------------------------------------------------
// 負の絶対値
//
+ (void) _vDSP_vnabs
{
    float array1[5] = {-1, 2, -3, 4, -5};
    float array2[5] = {0, 0, 0, 0, 0};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vnabs --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"array1: "];
    
    vDSP_vnabs(array1, 1, array2, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogFloat:array2 length:5 label:@"array2: "];
}
+ (void) _vDSP_vnabsD
{
    double array1[5] = {-1, 2, -3, 4, -5};
    double array2[5] = {0, 0, 0, 0, 0};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vnabsD --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"array1: "];
    
    vDSP_vnabsD(array1, 1, array2, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogDouble:array2 length:5 label:@"array2: "];
}


// ----------------------------------------------------------------------------------------------------
// 符号反転
//
+ (void) _vDSP_vneg
{
    float array1[5] = {-1, 2, -3, 4, -5};
    float array2[5] = {0, 0, 0, 0, 0};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vneg --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"array1: "];
    
    vDSP_vneg(array1, 1, array2, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogFloat:array2 length:5 label:@"array2: "];
}
+ (void) _vDSP_vnegD
{
    double array1[5] = {-1, 2, -3, 4, -5};
    double array2[5] = {0, 0, 0, 0, 0};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vnegD --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"array1: "];
    
    vDSP_vnegD(array1, 1, array2, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogDouble:array2 length:5 label:@"array2: "];
}


// ----------------------------------------------------------------------------------------------------
// 小数部
//
+ (void) _vDSP_vfrac
{
    float array1[5] = {3, 1.25, 0.25, -0.25, -1.25};
    float array2[5] = {0, 0, 0, 0, 0};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vfrac --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"array1: "];
    
    vDSP_vfrac(array1, 1, array2, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogFloat:array2 length:5 label:@"array2: "];
}
+ (void) _vDSP_vfracD
{
    double array1[5] = {3, 1.25, 0.25, -0.25, -1.25};
    double array2[5] = {0, 0, 0, 0, 0};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vfracD --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"array1: "];
    
    vDSP_vfracD(array1, 1, array2, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogDouble:array2 length:5 label:@"array2: "];
}


// ----------------------------------------------------------------------------------------------------
// 符号なし二乗
//
+ (void) _vDSP_vsq
{
    float array1[5] = {-1, 2, -3, 4, -5};
    float array2[5] = {0, 0, 0, 0, 0};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vsq --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"array1: "];
    
    vDSP_vsq(array1, 1, array2, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogFloat:array2 length:5 label:@"array2: "];
}
+ (void) _vDSP_vsqD
{
    double array1[5] = {-1, 2, -3, 4, -5};
    double array2[5] = {0, 0, 0, 0, 0};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vsqD --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"array1: "];
    
    vDSP_vsqD(array1, 1, array2, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogDouble:array2 length:5 label:@"array2: "];
}


// ----------------------------------------------------------------------------------------------------
// 符号なあり二乗
//
+ (void) _vDSP_vssq
{
    float array1[5] = {-1, 2, -3, 4, -5};
    float array2[5] = {0, 0, 0, 0, 0};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vssq --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogFloat:array1 length:5 label:@"array1: "];
    
    vDSP_vssq(array1, 1, array2, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogFloat:array2 length:5 label:@"array2: "];
}
+ (void) _vDSP_vssqD
{
    double array1[5] = {-1, 2, -3, 4, -5};
    double array2[5] = {0, 0, 0, 0, 0};
    
    NSLog(@"\n");
    NSLog(@"-------------------- vDSP_vssqD --------------------");
    NSLog(@"[Before]");
    [YAVDSPSampleLog nsLogDouble:array1 length:5 label:@"array1: "];
    
    vDSP_vssqD(array1, 1, array2, 1, 5);
    
    NSLog(@"[After]");
    
    [YAVDSPSampleLog nsLogDouble:array2 length:5 label:@"array2: "];
}





@end
