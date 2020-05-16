.class public Lcom/android/systemui/lockstar/component/PluginLockWallpaper;
.super Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;
.source "PluginLockWallpaper.java"


# instance fields
.field private mRecovered:Z

.field private mUpdateStyle:I

.field private mWallpaperBitmap:Landroid/graphics/Bitmap;

.field private mWallpaperPath:Ljava/lang/String;

.field private mWallpaperRecoverType:I

.field private mWallpaperType:I

.field private mWallpaperUpdateCallback:Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mUpdateStyle:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperRecoverType:I

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mRecovered:Z

    return-void
.end method

.method private backupWallpaperSource()V
    .locals 4

    const-string v0, "lockscreen_wallpaper_transparent"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->getSettingsSystem(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "PluginLockWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupWallpaperType() backupSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->setWallpaperSourceBackupValue(I)V

    const-string v2, "lockscreen_wallpaper_transparent"

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->putSettingsSystem(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private backupWallpaperType()V
    .locals 4

    const-string v0, "lockscreen_wallpaper"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->getSettingsSystem(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "PluginLockWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupWallpaperType() backupType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 v1, -0x3

    invoke-virtual {p0, v1}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->setWallpaperTypeBackupValue(I)V

    const-string v1, "lockscreen_wallpaper"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->putSettingsSystem(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private recoverWallpaperSource()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->getWallpaperSourceBackupValue()I

    move-result v0

    const-string v1, "PluginLockWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recoverWallpaperSource() backupWallpaperSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v1, "lockscreen_wallpaper_transparent"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->putSettingsSystem(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private recoverWallpaperType()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->getWallpaperTypeBackupValue()I

    move-result v0

    const-string v1, "PluginLockWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recoverWallpaperType() backupWallpaperType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const-string v1, "lockscreen_wallpaper"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->putSettingsSystem(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Lcom/android/systemui/lockstar/model/DynamicLockData;Lcom/android/systemui/lockstar/model/DynamicLockData;)V
    .locals 2

    const-string v0, "PluginLockWallpaper"

    const-string v1, "apply()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->getUpdateStyle()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mUpdateStyle:I

    invoke-virtual {p2}, Lcom/android/systemui/lockstar/model/DynamicLockData;->getWallpaperData()Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->getRecoverType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperRecoverType:I

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mRecovered:Z

    return-void
.end method

.method public getUpdateStyle()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mUpdateStyle:I

    return v0
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getWallpaperPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperPath:Ljava/lang/String;

    return-object v0
.end method

.method public getWallpaperType()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 v0, 0x8

    return v0

    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isDynamicWallpaper()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mRecovered:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->getWallpaperDynamicBackupValue()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecoverRequiredWallpaper()Z
    .locals 5

    const-string v0, "lockscreen_wallpaper_transparent"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->getSettingsSystem(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "PluginLockWallpaper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRecoverRequiredWallpaper() type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public isStickyRecoverType()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperRecoverType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public recover()V
    .locals 2

    const-string v0, "PluginLockWallpaper"

    const-string/jumbo v1, "recover()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mRecovered:Z

    const/4 v0, -0x2

    invoke-virtual {p0, v0, v0, v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->setWallpaperBackupValue(III)V

    return-void
.end method

.method public reset(Z)V
    .locals 2

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperPath:Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->recoverWallpaperSource()V

    invoke-direct {p0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->recoverWallpaperType()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;

    invoke-interface {v1}, Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;->onWallpaperUpdate()V

    :cond_1
    if-nez p1, :cond_2

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->setWallpaperBackupValue(III)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mRecovered:Z

    return-void
.end method

.method public bridge synthetic setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/lockstar/component/AbstractPluginLockItem;->setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    return-void
.end method

.method public setWallpaperUpdateCallback(Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;

    return-void
.end method

.method public update(Landroid/content/Context;IILjava/lang/String;)V
    .locals 4

    const-string v0, "PluginLockWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update() wallpaperType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperType:I

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    const/4 v1, -0x2

    iput v1, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperType:I

    iput-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperPath:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->setWallpaperSourceBackupValue(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->setWallpaperTypeBackupValue(I)V

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PluginLockWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t load bitmap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iput-object p4, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    nop

    :goto_0
    iget v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperType:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->setWallpaperDynamicBackupValue(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mRecovered:Z

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperPath:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->backupWallpaperType()V

    invoke-direct {p0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->backupWallpaperSource()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->mWallpaperUpdateCallback:Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;

    invoke-interface {v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;->onWallpaperUpdate()V

    :cond_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
