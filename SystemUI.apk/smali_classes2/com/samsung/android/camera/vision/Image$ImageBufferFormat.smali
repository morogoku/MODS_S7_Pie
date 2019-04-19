.class public final enum Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;
.super Ljava/lang/Enum;
.source "Image.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/vision/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageBufferFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum ABGR32:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum ARGB32:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum BGR24:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum BGRA32:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum GRAY32:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum GRAY8:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum RGB24:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum RGB565:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum RGBA32:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum UNKNOWN:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum YUV2:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum YUV420P:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum YUV420P_WIDE:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum YUV420SP:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum YUV420SP_WIDE:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum YV16:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

.field public static final enum YVU9:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "RGBA32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->RGBA32:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "BGRA32"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->BGRA32:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "RGB24"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->RGB24:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "BGR24"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->BGR24:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "RGB565"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->RGB565:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "GRAY32"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->GRAY32:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "GRAY8"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->GRAY8:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "YUV2"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->YUV2:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "YVU9"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->YVU9:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "YUV420P"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->YUV420P:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "YUV420SP"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->YUV420SP:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "YUV420P_WIDE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->YUV420P_WIDE:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "YUV420SP_WIDE"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->YUV420SP_WIDE:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "YV16"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->YV16:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "ARGB32"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->ARGB32:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "ABGR32"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->ABGR32:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    new-instance v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const-string v1, "UNKNOWN"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->UNKNOWN:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->RGBA32:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->BGRA32:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->RGB24:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->BGR24:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->RGB565:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->GRAY32:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->GRAY8:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->YUV2:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->YVU9:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->YUV420P:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->YUV420SP:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->YUV420P_WIDE:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->YUV420SP_WIDE:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    aput-object v1, v0, v14

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->YV16:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->ARGB32:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->ABGR32:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->UNKNOWN:Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->$VALUES:[Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;
    .locals 1

    const-class v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->$VALUES:[Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    invoke-virtual {v0}, [Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/camera/vision/Image$ImageBufferFormat;

    return-object v0
.end method
