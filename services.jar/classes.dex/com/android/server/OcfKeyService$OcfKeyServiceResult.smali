.class final enum Lcom/android/server/OcfKeyService$OcfKeyServiceResult;
.super Ljava/lang/Enum;
.source "OcfKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OcfKeyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OcfKeyServiceResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OcfKeyService$OcfKeyServiceResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum DEVICE_INSECURE:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum EXCEPTION_OCCUR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum INVALID_PARAMETER:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum NO_AVAILABLE_KEY:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum NO_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum NO_SERVICE:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum TZ_COMMUNICATION_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

.field public static final enum TZ_INTERNAL_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->NO_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string v1, "PERMISSION_DENIED"

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string v1, "NO_SERVICE"

    const/4 v4, 0x2

    const/4 v5, -0x2

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->NO_SERVICE:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string v1, "INVALID_PARAMETER"

    const/4 v5, 0x3

    const/4 v6, -0x3

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->INVALID_PARAMETER:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string v1, "DEVICE_INSECURE"

    const/4 v6, 0x4

    const/4 v7, -0x4

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->DEVICE_INSECURE:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string v1, "TZ_COMMUNICATION_ERROR"

    const/4 v7, -0x5

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v7}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_COMMUNICATION_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string v1, "TZ_INTERNAL_ERROR"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v7}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_INTERNAL_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string v1, "EXCEPTION_OCCUR"

    const/4 v7, 0x7

    const/4 v10, -0x6

    invoke-direct {v0, v1, v7, v10}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->EXCEPTION_OCCUR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    new-instance v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const-string v1, "NO_AVAILABLE_KEY"

    const/16 v10, 0x8

    const/4 v11, -0x7

    invoke-direct {v0, v1, v10, v11}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->NO_AVAILABLE_KEY:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->NO_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->PERMISSION_DENIED:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->NO_SERVICE:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->INVALID_PARAMETER:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->DEVICE_INSECURE:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_COMMUNICATION_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_INTERNAL_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->EXCEPTION_OCCUR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->NO_AVAILABLE_KEY:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->$VALUES:[Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->mCode:I

    return-void
.end method

.method public static convertOcfKeyServiceError(I)Lcom/android/server/OcfKeyService$OcfKeyServiceResult;
    .registers 22

    move/from16 v0, p0

    const/4 v1, 0x0

    const v2, 0x10001

    const v3, 0x10002

    const v4, 0x10003

    const v5, 0x10004

    const v6, 0x10005

    const v7, 0x10006

    const v8, 0x10007

    const v9, 0x1000a

    const v10, 0x1000b

    const v11, 0x1000c

    const v12, 0x1000d

    const v13, 0x1000e

    const v14, 0x1000f

    const/16 v15, 0xc

    const/16 v16, -0xa

    move/from16 v17, v1

    const-string v1, "OcfKeyService"

    move/from16 v18, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    const-string/jumbo v3, "result from tz_ocf : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_INTERNAL_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    if-eqz v0, :cond_76

    const/16 v2, 0xc

    if-eq v0, v2, :cond_73

    const v2, 0x10007

    if-eq v0, v2, :cond_70

    const v2, 0x1000a

    if-eq v0, v2, :cond_70

    packed-switch v0, :pswitch_data_96

    packed-switch v0, :pswitch_data_a4

    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_INTERNAL_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    goto :goto_79

    :pswitch_6a
    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->DEVICE_INSECURE:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    goto :goto_79

    :pswitch_6d
    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_COMMUNICATION_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    goto :goto_79

    :cond_70
    :pswitch_70
    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->TZ_INTERNAL_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    goto :goto_79

    :cond_73
    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->NO_AVAILABLE_KEY:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    goto :goto_79

    :cond_76
    sget-object v1, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->NO_ERROR:Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    nop

    :goto_79
    const-string v2, "OcfKeyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "result OcfKeyServiceResult : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    nop

    :pswitch_data_96
    .packed-switch 0x10001
        :pswitch_6d
        :pswitch_6d
        :pswitch_6d
        :pswitch_70
        :pswitch_70
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x1000c
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
        :pswitch_6a
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OcfKeyService$OcfKeyServiceResult;
    .registers 2

    const-class v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OcfKeyService$OcfKeyServiceResult;
    .registers 1

    sget-object v0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->$VALUES:[Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    invoke-virtual {v0}, [Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OcfKeyService$OcfKeyServiceResult;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    iget v0, p0, Lcom/android/server/OcfKeyService$OcfKeyServiceResult;->mCode:I

    return v0
.end method
