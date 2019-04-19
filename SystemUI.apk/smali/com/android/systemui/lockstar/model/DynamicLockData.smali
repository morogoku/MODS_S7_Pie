.class public Lcom/android/systemui/lockstar/model/DynamicLockData;
.super Ljava/lang/Object;
.source "DynamicLockData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/lockstar/model/DynamicLockData$HelpTextData;,
        Lcom/android/systemui/lockstar/model/DynamicLockData$CaptureData;,
        Lcom/android/systemui/lockstar/model/DynamicLockData$ShortcutData;,
        Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;,
        Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;,
        Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;,
        Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;
    }
.end annotation


# instance fields
.field VERSION:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field private mCaptureData:Lcom/android/systemui/lockstar/model/DynamicLockData$CaptureData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "capture_info"
    .end annotation
.end field

.field private mHelpTextData:Lcom/android/systemui/lockstar/model/DynamicLockData$HelpTextData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "helptext_info"
    .end annotation
.end field

.field private mNonSwipeModeData:Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "non_swipe_info"
    .end annotation
.end field

.field private mNotificationData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_info"
    .end annotation
.end field

.field private mServiceBoxData:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "service_box_info"
    .end annotation
.end field

.field private mShortcutData:Lcom/android/systemui/lockstar/model/DynamicLockData$ShortcutData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcut_info"
    .end annotation
.end field

.field private mWallpaperData:Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "wallpaper_info"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->VERSION:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method protected clone()Lcom/android/systemui/lockstar/model/DynamicLockData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/model/DynamicLockData;

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/model/DynamicLockData;->clone()Lcom/android/systemui/lockstar/model/DynamicLockData;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/android/systemui/lockstar/model/DynamicLockData;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/lockstar/model/DynamicLockData;

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    invoke-virtual {v2, v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    invoke-virtual {v2, v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    invoke-virtual {v2, v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;

    if-nez v2, :cond_6

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;

    invoke-virtual {v2, v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/lockstar/model/DynamicLockData$ShortcutData;

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/lockstar/model/DynamicLockData$ShortcutData;

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/lockstar/model/DynamicLockData$ShortcutData;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/lockstar/model/DynamicLockData$ShortcutData;

    iget-object v3, v0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/lockstar/model/DynamicLockData$ShortcutData;

    invoke-virtual {v2, v3}, Lcom/android/systemui/lockstar/model/DynamicLockData$ShortcutData;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v1, 0x1

    nop

    :cond_a
    return v1

    :cond_b
    return v1
.end method

.method public getCaptureData()Lcom/android/systemui/lockstar/model/DynamicLockData$CaptureData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mCaptureData:Lcom/android/systemui/lockstar/model/DynamicLockData$CaptureData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/lockstar/model/DynamicLockData$CaptureData;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/model/DynamicLockData$CaptureData;-><init>(Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mCaptureData:Lcom/android/systemui/lockstar/model/DynamicLockData$CaptureData;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mCaptureData:Lcom/android/systemui/lockstar/model/DynamicLockData$CaptureData;

    return-object v0
.end method

.method public getHelpTextData()Lcom/android/systemui/lockstar/model/DynamicLockData$HelpTextData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mHelpTextData:Lcom/android/systemui/lockstar/model/DynamicLockData$HelpTextData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/lockstar/model/DynamicLockData$HelpTextData;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/model/DynamicLockData$HelpTextData;-><init>(Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mHelpTextData:Lcom/android/systemui/lockstar/model/DynamicLockData$HelpTextData;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mHelpTextData:Lcom/android/systemui/lockstar/model/DynamicLockData$HelpTextData;

    return-object v0
.end method

.method public getNonSwipeModeData()Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;-><init>(Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mNonSwipeModeData:Lcom/android/systemui/lockstar/model/DynamicLockData$NonSwipeModeData;

    return-object v0
.end method

.method public getNotificationData()Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;-><init>(Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mNotificationData:Lcom/android/systemui/lockstar/model/DynamicLockData$NotificationData;

    return-object v0
.end method

.method public getServiceBoxData()Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;-><init>(Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mServiceBoxData:Lcom/android/systemui/lockstar/model/DynamicLockData$ServiceBoxData;

    return-object v0
.end method

.method public getShortcutData()Lcom/android/systemui/lockstar/model/DynamicLockData$ShortcutData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/lockstar/model/DynamicLockData$ShortcutData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/lockstar/model/DynamicLockData$ShortcutData;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/model/DynamicLockData$ShortcutData;-><init>(Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/lockstar/model/DynamicLockData$ShortcutData;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mShortcutData:Lcom/android/systemui/lockstar/model/DynamicLockData$ShortcutData;

    return-object v0
.end method

.method public getWallpaperData()Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;-><init>(Lcom/android/systemui/lockstar/model/DynamicLockData;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/model/DynamicLockData;->mWallpaperData:Lcom/android/systemui/lockstar/model/DynamicLockData$WallpaperData;

    return-object v0
.end method
