.class Lcom/android/server/desktopmode/DesktopModeService$3;
.super Landroid/database/ContentObserver;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->initializeStates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$3;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$3;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # invokes: Lcom/android/server/desktopmode/DesktopModeService;->initializeStates()V
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$6700(Lcom/android/server/desktopmode/DesktopModeService;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$3;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    # getter for: Lcom/android/server/desktopmode/DesktopModeService;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->access$100(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$3;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/desktopmode/DesktopModeService;->mUserSetupCompleteObserver:Landroid/database/ContentObserver;
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->access$6802(Lcom/android/server/desktopmode/DesktopModeService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    return-void
.end method
