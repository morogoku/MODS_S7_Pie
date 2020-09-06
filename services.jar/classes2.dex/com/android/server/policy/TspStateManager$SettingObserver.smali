.class Lcom/android/server/policy/TspStateManager$SettingObserver;
.super Landroid/database/ContentObserver;
.source "TspStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/TspStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/TspStateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/TspStateManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/policy/TspStateManager$SettingObserver;->this$0:Lcom/android/server/policy/TspStateManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string v0, "TspStateManagerInternal"

    const-string/jumbo v1, "onChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager$SettingObserver;->this$0:Lcom/android/server/policy/TspStateManager;

    # invokes: Lcom/android/server/policy/TspStateManager;->createDebugObjectIfNeeded()V
    invoke-static {v0}, Lcom/android/server/policy/TspStateManager;->access$000(Lcom/android/server/policy/TspStateManager;)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager$SettingObserver;->this$0:Lcom/android/server/policy/TspStateManager;

    # invokes: Lcom/android/server/policy/TspStateManager;->updateCustomValue()V
    invoke-static {v0}, Lcom/android/server/policy/TspStateManager;->access$100(Lcom/android/server/policy/TspStateManager;)V

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager$SettingObserver;->this$0:Lcom/android/server/policy/TspStateManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/policy/TspStateManager;->updateWindowPolicy(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Ljava/lang/String;)V

    return-void
.end method
