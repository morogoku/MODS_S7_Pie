.class public Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxNotificationManager.java"


# instance fields
.field private final mMediaNotificationKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/statusbar/NotificationData;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationUpdater:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBoxMusicNotificationKey:Ljava/lang/String;

.field private mServiceBoxMusicNotificationPkg:Ljava/lang/String;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mMediaNotificationKeyList:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mServiceBoxMusicNotificationKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mServiceBoxMusicNotificationPkg:Ljava/lang/String;

    return-void
.end method

.method private updateServiceBoxMusicNotificationKey(Lcom/android/systemui/statusbar/NotificationData;)Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->isMusicServiceBoxOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mServiceBoxMusicNotificationPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mServiceBoxMusicNotificationKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mServiceBoxMusicNotificationKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mNotificationUpdater:Ljava/util/function/Consumer;

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const-string v0, "KeyguardServiceBoxNotificationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceBoxMusicNotificationPkg is empty but mServiceBoxMusicNotificationKey is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mServiceBoxMusicNotificationKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-class v5, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v5

    nop

    :goto_0
    if-ge v1, v4, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v7, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mServiceBoxMusicNotificationPkg:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mMediaNotificationKeyList:Ljava/util/List;

    iget-object v8, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v7, v5, :cond_2

    iget-object v7, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mServiceBoxMusicNotificationKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iput-object v7, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mServiceBoxMusicNotificationKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mNotificationUpdater:Ljava/util/function/Consumer;

    invoke-interface {v7, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v3
.end method


# virtual methods
.method public addServiceBoxMusicNotification(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mMediaNotificationKeyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mMediaNotificationKeyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public init(Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/statusbar/NotificationData;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mNotificationUpdater:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mNotificationSupplier:Ljava/util/function/Supplier;

    return-void
.end method

.method public isMusicServiceBoxOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledServiceBoxMusicPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxController;->isClockOnly()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isServiceBoxMusicNotification(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mServiceBoxMusicNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeServiceBoxMusicNotification(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mServiceBoxMusicNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mServiceBoxMusicNotificationKey:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mMediaNotificationKeyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mMediaNotificationKeyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public updateServiceBoxMusicNotificationKey()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mNotificationSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->updateServiceBoxMusicNotificationKey(Lcom/android/systemui/statusbar/NotificationData;)Z

    move-result v0

    return v0
.end method

.method public updateServiceBoxMusicNotificationPkg(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mServiceBoxMusicNotificationPkg:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mServiceBoxMusicNotificationPkg:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mNotificationSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->mNotificationSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxNotificationManager;->updateServiceBoxMusicNotificationKey(Lcom/android/systemui/statusbar/NotificationData;)Z

    :cond_0
    return-void
.end method
