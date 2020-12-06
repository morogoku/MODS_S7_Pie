.class Lcom/android/systemui/statusbar/phone/StatusBar$5;
.super Landroid/database/ContentObserver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getInstance()Lcom/android/systemui/noticenter/NotiCenterPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lock_screen_allow_private_notifications"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lock_screen_allow_private_notifications"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_allow_private_notifications"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$5;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getInstance()Lcom/android/systemui/noticenter/NotiCenterPlugin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->getPlugin()Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;->updateSettings(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
