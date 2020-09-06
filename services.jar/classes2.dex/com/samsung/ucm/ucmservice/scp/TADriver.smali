.class public Lcom/samsung/ucm/ucmservice/scp/TADriver;
.super Ljava/lang/Object;
.source "TADriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$Protocol;,
        Lcom/samsung/ucm/ucmservice/scp/TADriver$ErrorCode;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "UCM.SCP.TADriver"

.field private static final TIMA_COMPROMISED_TYPE1:I = 0x1000c

.field private static final TIMA_COMPROMISED_TYPE2:I = 0x1000d

.field private static final TIMA_COMPROMISED_TYPE3:I = 0x1000e

.field private static final TIMA_COMPROMISED_TYPE4:I = 0x1000f

.field private static final TIMA_VALIDATION_SUCCESS:I


# instance fields
.field private _config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

.field certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

.field private mContext:Landroid/content/Context;

.field private mTimaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;-><init>(Lcom/samsung/ucm/ucmservice/scp/TADriver$1;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    new-instance v0, Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    invoke-direct {v0}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;-><init>()V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->add(I)V

    return-void
.end method

.method private checkTimaError(I)Z
    .registers 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_8

    goto :goto_6

    :pswitch_5
    const/4 v0, 0x1

    :goto_6
    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x1000c
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static native constructSecureChannel(II[B)[B
.end method

.method private static native deleteCACert(ILjava/lang/String;)I
.end method

.method private static native destorySecureChannel(I)I
.end method

.method private static native encodeAPDU(I[BZ)[B
.end method

.method private forwardApdu(I[B)[B
    .registers 4

    invoke-static {p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->forwardApduResponse(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method private static native forwardApduResponse(I[B)[B
.end method

.method private getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 7

    new-instance v0, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {p0, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v1

    const/16 v2, 0x191

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object v0
.end method

.method private getSDKErrorCode(I)I
    .registers 9

    const-string v0, "UCM.SCP.TADriver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSDKErrorCode internalCode-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0xf

    if-eq p1, v1, :cond_9e

    const/16 v1, 0xf0

    if-eq p1, v1, :cond_51

    packed-switch p1, :pswitch_data_b8

    packed-switch p1, :pswitch_data_c4

    packed-switch p1, :pswitch_data_d2

    packed-switch p1, :pswitch_data_e4

    goto/16 :goto_a1

    :pswitch_2d
    const/16 v0, 0x3d

    goto/16 :goto_a1

    :pswitch_31
    const/16 v0, 0x3c

    goto/16 :goto_a1

    :pswitch_35
    const/16 v0, 0x3b

    goto/16 :goto_a1

    :pswitch_39
    const/16 v0, 0x3a

    goto :goto_a1

    :pswitch_3c
    const/16 v0, 0x39

    goto :goto_a1

    :pswitch_3f
    const/16 v0, 0x38

    goto :goto_a1

    :pswitch_42
    const/16 v0, 0x37

    goto :goto_a1

    :pswitch_45
    const/16 v0, 0x36

    goto :goto_a1

    :pswitch_48
    const/16 v0, 0x35

    goto :goto_a1

    :pswitch_4b
    const/16 v0, 0x34

    goto :goto_a1

    :pswitch_4e
    const/16 v0, 0x33

    goto :goto_a1

    :cond_51
    const/16 v0, 0x42

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->updateTimaVersion()V

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getTimaStatus()I

    move-result v1

    if-nez v1, :cond_5e

    const/4 v2, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v2, 0x0

    :goto_5f
    const-string v3, "UCM.SCP.TADriver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSDKErrorCode check if device compromised timaStatus-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and result-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_a1

    invoke-direct {p0, v1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->checkTimaError(I)Z

    move-result v3

    const-string v4, "UCM.SCP.TADriver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSDKErrorCode deviceCompromised -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_a1

    const/16 v0, 0x3e

    goto :goto_a1

    :cond_9e
    :pswitch_9e
    const/16 v0, 0x32

    nop

    :cond_a1
    :goto_a1
    const-string v1, "UCM.SCP.TADriver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSDKErrorCode errorCode-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_9e
        :pswitch_4e
        :pswitch_4b
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0x7
        :pswitch_48
        :pswitch_9e
        :pswitch_45
        :pswitch_48
        :pswitch_9e
    .end packed-switch

    :pswitch_data_d2
    .packed-switch 0x11
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x21
        :pswitch_35
        :pswitch_31
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_2d
        :pswitch_4b
        :pswitch_3c
    .end packed-switch
.end method

.method private getSW([B)S
    .registers 5

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/16 v1, 0x6700

    return v1

    :cond_7
    add-int/lit8 v1, v0, -0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method public static native getStringFromJNI()Ljava/lang/String;
.end method

.method private getTimaService()Landroid/service/tima/ITimaService;
    .registers 2

    const-string/jumbo v0, "tima"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v0

    return-object v0
.end method

.method private getTimaStatus()I
    .registers 8

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    const-string v2, "N/A"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->updateTimaVersion()V

    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v1

    if-nez v1, :cond_1c

    const-string v2, "UCM.SCP.TADriver"

    const-string v3, "getTimaStatus() - Tima Service is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1c
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x7ec2e91

    const/4 v6, 0x1

    if-eq v4, v5, :cond_48

    const v5, 0xc174

    if-eq v4, v5, :cond_3e

    const v5, 0xc535

    if-eq v4, v5, :cond_34

    goto :goto_51

    :cond_34
    const-string v4, "3.0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    move v3, v6

    goto :goto_51

    :cond_3e
    const-string v4, "2.0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v3, 0x0

    goto :goto_51

    :cond_48
    const-string v4, "FIPS3.0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v3, 0x2

    :cond_51
    :goto_51
    packed-switch v3, :pswitch_data_b4

    sget-boolean v2, Lcom/samsung/ucm/ucmservice/scp/TADriver;->DEBUG:Z

    goto :goto_6c

    :pswitch_57
    invoke-interface {v1, v6}, Landroid/service/tima/ITimaService;->FipsKeyStore3_init(Z)I

    move-result v2

    move v0, v2

    goto :goto_98

    :pswitch_5d
    invoke-interface {v1}, Landroid/service/tima/ITimaService;->KeyStore3_init()I

    move-result v2

    move v0, v2

    goto :goto_98

    :pswitch_63
    invoke-interface {v1}, Landroid/service/tima/ITimaService;->keystoreInit()I

    move-result v2

    move v0, v2

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->keystoreShutdown()I

    goto :goto_98

    :goto_6c
    if-eqz v2, :cond_98

    const-string v2, "UCM.SCP.TADriver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTimaStatus() - Unknown Tima Version... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_86} :catch_90
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_86} :catch_87

    goto :goto_98

    :catch_87
    move-exception v1

    const-string v2, "UCM.SCP.TADriver"

    const-string v3, "getTimaStatus() - Failed due to unexpected error..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    :catch_90
    move-exception v1

    const-string v2, "UCM.SCP.TADriver"

    const-string v3, "getTimaStatus() - Failed to access to tima service..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_98
    :goto_98
    nop

    :goto_99
    sget-boolean v1, Lcom/samsung/ucm/ucmservice/scp/TADriver;->DEBUG:Z

    if-eqz v1, :cond_b3

    const-string v1, "UCM.SCP.TADriver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimaStatus() - Tima Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b3
    return v0

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_63
        :pswitch_5d
        :pswitch_57
    .end packed-switch
.end method

.method private static native installCACert(ILjava/lang/String;[B)I
.end method

.method private isEncryptableResp(S)Z
    .registers 5

    const/4 v0, 0x0

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    const/16 v2, -0x7000

    if-eq p1, v2, :cond_14

    const/16 v2, 0x62

    if-eq v1, v2, :cond_14

    const/16 v2, 0x63

    if-ne v1, v2, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method private updateTimaVersion()V
    .registers 4

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    :try_start_4
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getTimaService()Landroid/service/tima/ITimaService;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v1, "UCM.SCP.TADriver"

    const-string/jumbo v2, "updateTimaVersion() - Tima Service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_13
    const-string v1, "2.0"

    invoke-interface {v0}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string v2, "2.0"

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    goto :goto_33

    :cond_24
    invoke-static {}, Lcom/sec/tima/keystore/util/Utility;->isFipsTimaEnabled()Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "FIPS3.0"

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    goto :goto_33

    :cond_2f
    const-string v2, "3.0"

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_33} :catch_34

    :goto_33
    goto :goto_3d

    :catch_34
    move-exception v0

    const-string v1, "UCM.SCP.TADriver"

    const-string/jumbo v2, "updateTimaVersion() : Unable to get tima version"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3d
    sget-boolean v0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->DEBUG:Z

    if-eqz v0, :cond_5a

    const-string v0, "UCM.SCP.TADriver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTimaVersion() - Tima Version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->mTimaVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    return-void
.end method


# virtual methods
.method public createSecureChannel(IILcom/samsung/ucm/ucmservice/scp/CreationParam;)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 12

    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->_config:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;

    iget-object v0, v0, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration;->protocol:Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;

    invoke-virtual {v0, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver$Configuration$Item;->isSupported(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_19

    const-string v0, "UCM.SCP.TADriver"

    const-string v2, "Not supported protocol"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v0, 0x0

    :try_start_1a
    invoke-virtual {p3}, Lcom/samsung/ucm/ucmservice/scp/CreationParam;->toTLV()[B

    move-result-object v2

    invoke-static {p1, p2, v2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->constructSecureChannel(II[B)[B

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_5d

    array-length v2, v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_26} :catch_6b

    if-gtz v2, :cond_29

    goto :goto_5d

    :cond_29
    nop

    const/4 v2, 0x0

    aget-byte v3, v0, v2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4c

    const-string v2, "UCM.SCP.TADriver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown TZ response : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v1

    return-object v1

    :cond_4c
    new-instance v4, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {p0, v2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v5

    const/16 v6, 0x190

    array-length v7, v0

    invoke-static {v0, v1, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v4, v2, v5, v6, v1}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object v4

    :cond_5d
    :goto_5d
    :try_start_5d
    const-string v2, "UCM.SCP.TADriver"

    const-string v3, "Invalid msg returned from SCPConstructSecureChannel(in)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xb

    invoke-direct {p0, v1, v2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v2
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_6a} :catch_6b

    return-object v2

    :catch_6b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v1

    return-object v1
.end method

.method public deleteCACerttificate(ILjava/lang/String;)Z
    .registers 5

    invoke-static {p1, p2}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->deleteCACert(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    const/4 v1, 0x1

    return v1

    :cond_8
    const/4 v1, 0x0

    return v1
.end method

.method public destroySecureChannel(I)I
    .registers 3

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->destorySecureChannel(I)I

    move-result v0

    return v0
.end method

.method public installCACerttificate(Ljava/lang/String;[BI)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/scp/TADriver;->certUtil:Lcom/samsung/ucm/ucmservice/scp/CertUtil;

    invoke-virtual {v2, p2}, Lcom/samsung/ucm/ucmservice/scp/CertUtil;->updateTlvCaCert([B)[B

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_13

    move-object v0, v2

    nop

    invoke-static {p3, p1, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->installCACert(ILjava/lang/String;[B)I

    move-result v2

    if-nez v2, :cond_12

    const/4 v1, 0x1

    return v1

    :cond_12
    return v1

    :catch_13
    move-exception v2

    return v1
.end method

.method public processMsg(II[B)Lcom/samsung/android/knox/ucm/core/ApduMessage;
    .registers 13

    const/16 v0, 0xb

    const/16 v1, 0x191

    const/16 v2, 0x12d

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_134

    const/4 v0, 0x2

    invoke-direct {p0, v3, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0

    return-object v0

    :pswitch_11
    invoke-direct {p0, p1, p3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->forwardApdu(I[B)[B

    move-result-object v2

    if-eqz v2, :cond_5a

    array-length v5, v2

    if-gtz v5, :cond_1b

    goto :goto_5a

    :cond_1b
    aget-byte v0, v2, v4

    packed-switch v0, :pswitch_data_13e

    const-string v1, "UCM.SCP.TADriver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown TZ response : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v1

    return-object v1

    :pswitch_3c
    new-instance v3, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    const/16 v5, 0x12c

    invoke-direct {p0, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v4

    const/4 v6, 0x0

    invoke-direct {v3, v5, v4, v1, v6}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object v3

    :pswitch_49
    new-instance v1, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {p0, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v5

    const/16 v6, 0x190

    array-length v7, v2

    invoke-static {v2, v3, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v1, v4, v5, v6, v3}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object v1

    :cond_5a
    :goto_5a
    const-string v1, "UCM.SCP.TADriver"

    const-string v4, "Invalid msg returned from SCPForwardApduMessage()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0

    return-object v0

    :pswitch_66
    invoke-direct {p0, p3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSW([B)S

    move-result v5

    const-string v6, "UCM.SCP.TADriver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SW of response : 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->isEncryptableResp(S)Z

    move-result v6

    if-nez v6, :cond_aa

    const-string v0, "UCM.SCP.TADriver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure response : 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-direct {p0, v3, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0

    return-object v0

    :cond_aa
    invoke-static {p1, p3, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->encodeAPDU(I[BZ)[B

    move-result-object v6

    if-nez v6, :cond_bc

    const-string v1, "UCM.SCP.TADriver"

    const-string v3, "Failed to decode APDU"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0

    return-object v0

    :cond_bc
    aget-byte v0, v6, v4

    if-eqz v0, :cond_df

    const-string v1, "UCM.SCP.TADriver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to decode APDU 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v1

    return-object v1

    :cond_df
    new-instance v2, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {p0, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v7

    array-length v8, v6

    invoke-static {v6, v3, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v4, v7, v1, v3}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object v2

    :pswitch_ee
    invoke-static {p1, p3, v3}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->encodeAPDU(I[BZ)[B

    move-result-object v5

    if-nez v5, :cond_100

    const-string v1, "UCM.SCP.TADriver"

    const-string v3, "Failed to encode APDU"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v0

    return-object v0

    :cond_100
    aget-byte v0, v5, v4

    if-eqz v0, :cond_123

    const-string v1, "UCM.SCP.TADriver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to encode APDU 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getErrMsg(II)Lcom/samsung/android/knox/ucm/core/ApduMessage;

    move-result-object v1

    return-object v1

    :cond_123
    new-instance v2, Lcom/samsung/android/knox/ucm/core/ApduMessage;

    invoke-direct {p0, v4}, Lcom/samsung/ucm/ucmservice/scp/TADriver;->getSDKErrorCode(I)I

    move-result v6

    array-length v7, v5

    invoke-static {v5, v3, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v2, v4, v6, v1, v3}, Lcom/samsung/android/knox/ucm/core/ApduMessage;-><init>(III[B)V

    return-object v2

    nop

    nop

    :pswitch_data_134
    .packed-switch 0xc8
        :pswitch_ee
        :pswitch_66
        :pswitch_11
    .end packed-switch

    :pswitch_data_13e
    .packed-switch 0x5
        :pswitch_49
        :pswitch_3c
    .end packed-switch
.end method
