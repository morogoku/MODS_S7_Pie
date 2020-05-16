.class Lcom/android/server/desktopmode/DesktopModeService$4;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->showInitialConnectionDialog(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;

.field final synthetic val$firstConnectionKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$4;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iput-object p2, p0, Lcom/android/server/desktopmode/DesktopModeService$4;->val$firstConnectionKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onClickButtonNegative()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$4;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$4;->val$firstConnectionKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method

.method public onClickButtonPositive()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$4;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$4;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$4;->val$firstConnectionKey:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method
