.class Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MultiDisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiDisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mDexDeveloperModeUri:Landroid/net/Uri;

.field private final mDexLabsResizableWindowEnabledUri:Landroid/net/Uri;

.field private final mDexTouchPadUsingUri:Landroid/net/Uri;

.field private final mDisplayChooserDoNotShowAgainUri:Landroid/net/Uri;

.field private final mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mWinnerPocSubDisplayUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/am/MultiDisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MultiDisplayManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mH:Lcom/android/server/am/MultiDisplayManagerService$H;
    invoke-static {p1}, Lcom/android/server/am/MultiDisplayManagerService;->access$200(Lcom/android/server/am/MultiDisplayManagerService;)Lcom/android/server/am/MultiDisplayManagerService$H;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    const-string/jumbo p1, "display_chooser_do_not_show_again"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mDisplayChooserDoNotShowAgainUri:Landroid/net/Uri;

    const-string/jumbo p1, "winner_poc_sub_display"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mWinnerPocSubDisplayUri:Landroid/net/Uri;

    const-string/jumbo p1, "labs_resizable_window_enabled"

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mDexLabsResizableWindowEnabledUri:Landroid/net/Uri;

    const-string/jumbo p1, "launch_policy_developer_enabled"

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mDexDeveloperModeUri:Landroid/net/Uri;

    const-string/jumbo p1, "touchpad_enabled"

    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mDexTouchPadUsingUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->initSettings()V

    return-void
.end method

.method private initSettings()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->this$0:Lcom/android/server/am/MultiDisplayManagerService;

    # getter for: Lcom/android/server/am/MultiDisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/MultiDisplayManagerService;->access$300(Lcom/android/server/am/MultiDisplayManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0, v2}, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->readSettings(Landroid/net/Uri;)V

    goto :goto_15

    :cond_2a
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    if-nez p2, :cond_a

    const-string v0, "MultiDisplayManager"

    const-string v1, "SettingsObserver_onChange: uri is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->readSettings(Landroid/net/Uri;)V

    return-void
.end method

.method readSettings(Landroid/net/Uri;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->updateDesktopModeSettings(Landroid/net/Uri;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsObserver{mUriList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MultiDisplayManagerService$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDesktopModeSettings(Landroid/net/Uri;)V
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return-void
.end method
