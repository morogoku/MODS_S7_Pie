.class final enum Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;
.super Ljava/lang/Enum;
.source "SemAutoEnhanceNightShotEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FilterParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum BILATERAL_SAMPLING_RANGE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum BILATERAL_SAMPLING_SPATIAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum BILATERAL_SIGMA_RANGE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum BILATERAL_SIGMA_SPATIAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum BLUR:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum CLIP_LIMIT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum DCT_SIGMA:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum DCT_THRESHOLD:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

.field public static final enum NOISE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string v1, "BILATERAL_SIGMA_SPATIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SIGMA_SPATIAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string v1, "BILATERAL_SIGMA_RANGE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SIGMA_RANGE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string v1, "BILATERAL_SAMPLING_SPATIAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SAMPLING_SPATIAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string v1, "BILATERAL_SAMPLING_RANGE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SAMPLING_RANGE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string v1, "DCT_SIGMA"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->DCT_SIGMA:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string v1, "DCT_THRESHOLD"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->DCT_THRESHOLD:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string v1, "CLIP_LIMIT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->CLIP_LIMIT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string v1, "NOISE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->NOISE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const-string v1, "BLUR"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BLUR:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SIGMA_SPATIAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SIGMA_RANGE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SAMPLING_SPATIAL:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BILATERAL_SAMPLING_RANGE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->DCT_SIGMA:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->DCT_THRESHOLD:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->CLIP_LIMIT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->NOISE:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->BLUR:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    aput-object v1, v0, v10

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->$VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;
    .locals 1

    const-class v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->$VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    invoke-virtual {v0}, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$FilterConfig$FilterParams;

    return-object v0
.end method
