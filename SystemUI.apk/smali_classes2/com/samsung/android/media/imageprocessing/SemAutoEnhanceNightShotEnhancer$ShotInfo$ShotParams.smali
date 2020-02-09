.class final enum Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;
.super Ljava/lang/Enum;
.source "SemAutoEnhanceNightShotEnhancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ShotParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

.field public static final enum BRIGHTNESS:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

.field public static final enum COMPRESSION:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

.field public static final enum EXPOSURE_TIME:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

.field public static final enum FLASH:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

.field public static final enum FOCAL_LENGTH:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

.field public static final enum F_NUMBER:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

.field public static final enum ISO:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

.field public static final enum TIME_OF_SHOT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    const-string v1, "EXPOSURE_TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->EXPOSURE_TIME:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    const-string v1, "TIME_OF_SHOT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->TIME_OF_SHOT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    const-string v1, "COMPRESSION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->COMPRESSION:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    const-string v1, "ISO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->ISO:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    const-string v1, "F_NUMBER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->F_NUMBER:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    const-string v1, "FOCAL_LENGTH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->FOCAL_LENGTH:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    const-string v1, "FLASH"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->FLASH:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    const-string v1, "BRIGHTNESS"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->BRIGHTNESS:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->EXPOSURE_TIME:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->TIME_OF_SHOT:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->COMPRESSION:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->ISO:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->F_NUMBER:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->FOCAL_LENGTH:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->FLASH:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->BRIGHTNESS:Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    aput-object v1, v0, v9

    sput-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->$VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;
    .locals 1

    const-class v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;
    .locals 1

    sget-object v0, Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->$VALUES:[Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    invoke-virtual {v0}, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/media/imageprocessing/SemAutoEnhanceNightShotEnhancer$ShotInfo$ShotParams;

    return-object v0
.end method
