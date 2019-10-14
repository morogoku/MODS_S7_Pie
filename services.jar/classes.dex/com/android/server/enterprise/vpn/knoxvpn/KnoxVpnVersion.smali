.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnVersion;
.super Ljava/lang/Object;
.source "KnoxVpnVersion.java"


# static fields
.field private static final KNOX_VPN_NUMBER:Ljava/lang/String; = "6"

.field private static final KNOX_VPN_VERSION:Ljava/lang/String; = "2.3.0"

.field private static final PROP_KNOX_VPN_VERSION:Ljava/lang/String; = "net.knoxvpn.version"

.field private static final TAG:Ljava/lang/String; = "KnoxVpnVersion"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumber()Ljava/lang/String;
    .registers 1

    const-string v0, "6"

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "2.3.0"

    return-object v0
.end method

.method private static getVersionByKnox()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnVersion$1;->$SwitchMap$com$samsung$android$knox$EnterpriseKnoxManager$EnterpriseKnoxSdkVersion:[I

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2c

    const-string v0, "2.2.0"

    goto :goto_2a

    :pswitch_18
    const-string v0, "2.4.0"

    goto :goto_2a

    :pswitch_1b
    const-string v0, "2.3.0"

    goto :goto_2a

    :pswitch_1e
    const-string v0, "2.2.4"

    goto :goto_2a

    :pswitch_21
    const-string v0, "2.2.3"

    goto :goto_2a

    :pswitch_24
    const-string v0, "2.2.2"

    goto :goto_2a

    :pswitch_27
    const-string v0, "2.2.0"

    nop

    :goto_2a
    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method

.method public static writeVersionInProperties()V
    .registers 3

    const-string v0, "KnoxVpnVersion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeVersionInProperties : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnVersion;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "net.knoxvpn.version"

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnVersion;->getVersionByKnox()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
