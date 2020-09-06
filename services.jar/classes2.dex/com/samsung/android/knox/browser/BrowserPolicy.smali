.class public Lcom/samsung/android/knox/browser/BrowserPolicy;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

.field private mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "BrowserPolicy"

    sput-object v0, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "browser_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/browser/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    iput-object p1, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method private getMiscService()Lcom/samsung/android/knox/IMiscPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v0, :cond_11

    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    if-nez v0, :cond_10

    const-string v0, "browser_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/browser/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    return-object v0
.end method


# virtual methods
.method public addWebBookmarkBitmap(Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.addWebBookmarkBitmap"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getMiscService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/IMiscPolicy;->addWebBookmarkBitmap(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed addWebBookmarkBitmap"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public addWebBookmarkByteBuffer(Landroid/net/Uri;Ljava/lang/String;[B)Z
    .registers 7

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.addWebBookmarkByteBuffer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getMiscService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/IMiscPolicy;->addWebBookmarkByteBuffer(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;[B)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed addWebBookmarkByteBuffer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public clearHttpProxy()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.clearHttpProxy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->clearHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public deleteWebBookmark(Landroid/net/Uri;Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.deleteWebBookmark"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getMiscService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/IMiscPolicy;->deleteWebBookmark(Lcom/samsung/android/knox/ContextInfo;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed deleteWebBookmark"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoFillSetting()Z
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getBrowserSettingStatus(I)Z

    move-result v0

    return v0
.end method

.method public getBrowserSettingStatus(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public getCookiesSetting()Z
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getBrowserSettingStatus(I)Z

    move-result v0

    return v0
.end method

.method public getForceFraudWarningSetting()Z
    .registers 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getBrowserSettingStatus(I)Z

    move-result v0

    return v0
.end method

.method public getHttpProxy()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->getHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavaScriptSetting()Z
    .registers 2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getBrowserSettingStatus(I)Z

    move-result v0

    return v0
.end method

.method public getPopupsSetting()Z
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getBrowserSettingStatus(I)Z

    move-result v0

    return v0
.end method

.method public setAutoFillSetting(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.setAutoFillSetting"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->setBrowserSettingStatus(ZI)Z

    move-result v0

    return v0
.end method

.method public setBrowserSettingStatus(ZI)Z
    .registers 6

    invoke-direct {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    if-eqz v0, :cond_17

    :try_start_6
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->setBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public setCookiesSetting(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.setCookiesSetting"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->setBrowserSettingStatus(ZI)Z

    move-result v0

    return v0
.end method

.method public setForceFraudWarningSetting(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.setForceFraudWarningSetting"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->setBrowserSettingStatus(ZI)Z

    move-result v0

    return v0
.end method

.method public setHttpProxy(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.setHttpProxy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->getService()Lcom/samsung/android/knox/browser/IBrowserPolicy;

    move-result-object v0

    if-eqz v0, :cond_1e

    :try_start_d
    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mService:Lcom/samsung/android/knox/browser/IBrowserPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/browser/IBrowserPolicy;->setHttpProxy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_16

    return v0

    :catch_16
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/browser/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public setJavaScriptSetting(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.setJavaScriptSetting"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->setBrowserSettingStatus(ZI)Z

    move-result v0

    return v0
.end method

.method public setPopupsSetting(Z)Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/knox/browser/BrowserPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "BrowserPolicy.setPopupsSetting"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/browser/BrowserPolicy;->setBrowserSettingStatus(ZI)Z

    move-result v0

    return v0
.end method
