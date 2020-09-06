.class public Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;
.super Ljava/lang/Object;
.source "KeyStoreParameter.java"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# static fields
.field public static PRIVATE_RESOURCE:I

.field public static SHARED_KEYCHAIN_RESOURCE:I

.field public static SHARED_WIFI_RESOURCE:I

.field private static UID_SELF:I


# instance fields
.field private final mOptions:Landroid/os/Bundle;

.field private final mOwnerUid:I

.field private final mResourceId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->UID_SELF:I

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->PRIVATE_RESOURCE:I

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->SHARED_KEYCHAIN_RESOURCE:I

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->SHARED_WIFI_RESOURCE:I

    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mResourceId:I

    iput p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mOwnerUid:I

    iput-object p3, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mOptions:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getOptions()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public getOwnerUid()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mOwnerUid:I

    return v0
.end method

.method public getResourceId()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mResourceId:I

    return v0
.end method
