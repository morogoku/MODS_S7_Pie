.class public Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;
.super Landroid/content/ContextWrapper;
.source "GenericVpnContext.java"


# static fields
.field public static final CONNECTING:Z = true

.field public static final DISCONNECTING:Z = false

.field public static final META_DISABLED:Z = false

.field public static final META_ENABLED:Z = true

.field public static final PER_APP_VPN:Z = false

.field public static final SYSTEM_VPN:Z = true

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mEnableMetaHeader:Z

.field private mIsConnecting:Z

.field private mProfile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "GenericVpnContext"

    sput-object v0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mProfile:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mIsConnecting:Z

    iput-boolean v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mEnableMetaHeader:Z

    return-void
.end method


# virtual methods
.method public enableMetaData(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mEnableMetaHeader:Z

    return-void
.end method

.method public getVPNProfile()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getVPNState()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mIsConnecting:Z

    return v0
.end method

.method public isMetaEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mEnableMetaHeader:Z

    return v0
.end method

.method public setGenericVpnParams(Ljava/lang/String;Z)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mProfile:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mIsConnecting:Z

    return-void
.end method
