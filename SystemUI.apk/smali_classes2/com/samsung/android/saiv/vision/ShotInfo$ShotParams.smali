.class final enum Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;
.super Ljava/lang/Enum;
.source "ShotInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/saiv/vision/ShotInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ShotParams"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum BLUE_X:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum BLUE_Y:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum BRIGHTNESS:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum CENTER_X:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum CENTER_Y:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum COMPRESSION:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum DIGITAL_ZOOM_RATIO:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum EXPOSURE_TIME:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum FLASH:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum FOCAL_LENGTH:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum F_NUMBER:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum GAMMA:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum GREEN_X:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum GREEN_Y:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum ISO:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum RED_X:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum RED_Y:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum SIGNIFICANT_BITS:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum TIME_OF_SHOT:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum WHITE_LEVEL:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum WHITE_POINT_X:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

.field public static final enum WHITE_POINT_Y:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;


# instance fields
.field final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "EXPOSURE_TIME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->EXPOSURE_TIME:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "COMPRESSION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->COMPRESSION:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "ISO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->ISO:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "F_NUMBER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->F_NUMBER:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "FOCAL_LENGTH"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->FOCAL_LENGTH:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "FLASH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->FLASH:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "BRIGHTNESS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->BRIGHTNESS:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "TIME_OF_SHOT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->TIME_OF_SHOT:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "GAMMA"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->GAMMA:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "SIGNIFICANT_BITS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->SIGNIFICANT_BITS:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "WHITE_LEVEL"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->WHITE_LEVEL:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "WHITE_POINT_X"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->WHITE_POINT_X:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "WHITE_POINT_Y"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->WHITE_POINT_Y:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "RED_X"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->RED_X:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "RED_Y"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->RED_Y:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "GREEN_X"

    const/16 v15, 0xf

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v14}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->GREEN_X:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "GREEN_Y"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->GREEN_Y:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "BLUE_X"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->BLUE_X:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "BLUE_Y"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->BLUE_Y:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "CENTER_X"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->CENTER_X:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "CENTER_Y"

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->CENTER_Y:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    new-instance v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const-string v1, "DIGITAL_ZOOM_RATIO"

    const/16 v14, 0x15

    const/16 v15, 0x15

    invoke-direct {v0, v1, v14, v15}, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->DIGITAL_ZOOM_RATIO:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const/16 v0, 0x16

    new-array v0, v0, [Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->EXPOSURE_TIME:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->COMPRESSION:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->ISO:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->F_NUMBER:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->FOCAL_LENGTH:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->FLASH:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->BRIGHTNESS:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->TIME_OF_SHOT:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->GAMMA:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->SIGNIFICANT_BITS:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->WHITE_LEVEL:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->WHITE_POINT_X:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->WHITE_POINT_Y:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->RED_X:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->RED_Y:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->GREEN_X:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->GREEN_Y:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->BLUE_X:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->BLUE_Y:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->CENTER_X:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->CENTER_Y:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->DIGITAL_ZOOM_RATIO:Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->$VALUES:[Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;
    .locals 1

    const-class v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;
    .locals 1

    sget-object v0, Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->$VALUES:[Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    invoke-virtual {v0}, [Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/saiv/vision/ShotInfo$ShotParams;

    return-object v0
.end method
