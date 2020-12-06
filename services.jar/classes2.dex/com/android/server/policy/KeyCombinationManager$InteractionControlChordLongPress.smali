.class Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;
.super Ljava/lang/Object;
.source "KeyCombinationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyCombinationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InteractionControlChordLongPress"
.end annotation


# instance fields
.field private mIsLaunchFromPowerKey:Z

.field final synthetic this$0:Lcom/android/server/policy/KeyCombinationManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/KeyCombinationManager;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;->this$0:Lcom/android/server/policy/KeyCombinationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;->mIsLaunchFromPowerKey:Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;->mIsLaunchFromPowerKey:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;->this$0:Lcom/android/server/policy/KeyCombinationManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/KeyCombinationManager;->mIsDirectAccessShortPressed:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;->access$102(Lcom/android/server/policy/KeyCombinationManager;Z)Z

    :cond_a
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.accessibility"

    const-string v2, "com.samsung.accessibility.interactioncontrol.AccessControlReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.accessibility.TOGGLE_MODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/KeyCombinationManager$InteractionControlChordLongPress;->this$0:Lcom/android/server/policy/KeyCombinationManager;

    iget-object v2, v2, Lcom/android/server/policy/KeyCombinationManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v2, "KeyCombinationManager"

    const-string v3, "Intercation Control mesage : broadcast"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
