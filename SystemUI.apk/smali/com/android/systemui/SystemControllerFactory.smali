.class public Lcom/android/systemui/SystemControllerFactory;
.super Ljava/lang/Object;
.source "SystemControllerFactory.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/bixby2/controller/ControllerFactory;


# instance fields
.field mAppController:Lcom/samsung/systemui/splugins/bixby2/controller/AppController;

.field mDeviceController:Lcom/samsung/systemui/splugins/bixby2/controller/DeviceController;

.field mMusicController:Lcom/samsung/systemui/splugins/bixby2/controller/MusicController;

.field mNotificationController:Lcom/samsung/systemui/splugins/bixby2/controller/NotificationController;

.field mScreenController:Lcom/samsung/systemui/splugins/bixby2/controller/ScreenController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/controller/AppControllerImpl;

    invoke-direct {v0}, Lcom/android/systemui/controller/AppControllerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemControllerFactory;->mAppController:Lcom/samsung/systemui/splugins/bixby2/controller/AppController;

    new-instance v0, Lcom/android/systemui/controller/MusicControllerImpl;

    invoke-direct {v0}, Lcom/android/systemui/controller/MusicControllerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemControllerFactory;->mMusicController:Lcom/samsung/systemui/splugins/bixby2/controller/MusicController;

    new-instance v0, Lcom/android/systemui/controller/ScreenControllerImpl;

    invoke-direct {v0}, Lcom/android/systemui/controller/ScreenControllerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemControllerFactory;->mScreenController:Lcom/samsung/systemui/splugins/bixby2/controller/ScreenController;

    new-instance v0, Lcom/android/systemui/controller/DeviceControllerImpl;

    invoke-direct {v0}, Lcom/android/systemui/controller/DeviceControllerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemControllerFactory;->mDeviceController:Lcom/samsung/systemui/splugins/bixby2/controller/DeviceController;

    new-instance v0, Lcom/android/systemui/controller/NotificationControllerImpl;

    invoke-direct {v0}, Lcom/android/systemui/controller/NotificationControllerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemControllerFactory;->mNotificationController:Lcom/samsung/systemui/splugins/bixby2/controller/NotificationController;

    return-void
.end method


# virtual methods
.method public getAppController()Lcom/samsung/systemui/splugins/bixby2/controller/AppController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemControllerFactory;->mAppController:Lcom/samsung/systemui/splugins/bixby2/controller/AppController;

    return-object v0
.end method

.method public getDeviceController()Lcom/samsung/systemui/splugins/bixby2/controller/DeviceController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemControllerFactory;->mDeviceController:Lcom/samsung/systemui/splugins/bixby2/controller/DeviceController;

    return-object v0
.end method

.method public getMusicController()Lcom/samsung/systemui/splugins/bixby2/controller/MusicController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemControllerFactory;->mMusicController:Lcom/samsung/systemui/splugins/bixby2/controller/MusicController;

    return-object v0
.end method

.method public getNotificationController()Lcom/samsung/systemui/splugins/bixby2/controller/NotificationController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemControllerFactory;->mNotificationController:Lcom/samsung/systemui/splugins/bixby2/controller/NotificationController;

    return-object v0
.end method

.method public getScreenController()Lcom/samsung/systemui/splugins/bixby2/controller/ScreenController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/SystemControllerFactory;->mScreenController:Lcom/samsung/systemui/splugins/bixby2/controller/ScreenController;

    return-object v0
.end method
