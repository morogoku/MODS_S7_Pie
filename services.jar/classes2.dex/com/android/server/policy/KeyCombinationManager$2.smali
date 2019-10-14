.class Lcom/android/server/policy/KeyCombinationManager$2;
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

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$2;->this$0:Lcom/android/server/policy/KeyCombinationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$2;->this$0:Lcom/android/server/policy/KeyCombinationManager;

    iget-object v0, v0, Lcom/android/server/policy/KeyCombinationManager;->mSamsungPolicy:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager$2;->this$0:Lcom/android/server/policy/KeyCombinationManager;

    # getter for: Lcom/android/server/policy/KeyCombinationManager;->mTriggered:[Z
    invoke-static {v1}, Lcom/android/server/policy/KeyCombinationManager;->access$000(Lcom/android/server/policy/KeyCombinationManager;)[Z

    move-result-object v1

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->takeScreenshot(IZ)V

    return-void
.end method
