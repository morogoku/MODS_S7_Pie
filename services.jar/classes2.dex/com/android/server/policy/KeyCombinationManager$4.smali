.class Lcom/android/server/policy/KeyCombinationManager$4;
.super Ljava/lang/Object;
.source "KeyCombinationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/KeyCombinationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/KeyCombinationManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/KeyCombinationManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$4;->this$0:Lcom/android/server/policy/KeyCombinationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "KeyCombinationManager"

    const-string v1, "interceptAccessibilityShortcut"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$4;->this$0:Lcom/android/server/policy/KeyCombinationManager;

    iget-object v0, v0, Lcom/android/server/policy/KeyCombinationManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->accessibilityShortcutActivated()V

    return-void
.end method
