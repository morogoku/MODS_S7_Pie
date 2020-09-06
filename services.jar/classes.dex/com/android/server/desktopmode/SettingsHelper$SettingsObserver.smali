.class Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/SettingsHelper;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 9

    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    # getter for: Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/desktopmode/SettingsHelper;->access$000(Lcom/android/server/desktopmode/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_3e

    # getter for: Lcom/android/server/desktopmode/SettingsHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/desktopmode/SettingsHelper;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " changed to="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    if-eqz p3, :cond_50

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->isGlobalKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    # getter for: Lcom/android/server/desktopmode/SettingsHelper;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/server/desktopmode/SettingsHelper;->access$000(Lcom/android/server/desktopmode/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_50
    iget-object v2, p0, Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    # getter for: Lcom/android/server/desktopmode/SettingsHelper;->mListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/desktopmode/SettingsHelper;->access$200(Lcom/android/server/desktopmode/SettingsHelper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    iget-object v4, v3, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;->mInterestedKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-virtual {v3, v1, p3}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;->onSettingChanged(Ljava/lang/String;I)V

    :cond_71
    goto :goto_5a

    :cond_72
    return-void
.end method
