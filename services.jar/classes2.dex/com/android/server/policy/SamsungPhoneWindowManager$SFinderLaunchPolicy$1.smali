.class Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;->this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;->this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_48

    const-string v1, "SFinderLaunchPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mStartSFinder: top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;->this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->access$1600(Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "componentname"

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;->this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy$1;->this$1:Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    # getter for: Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->mSFinderIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;->access$1600(Lcom/android/server/policy/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_50

    :cond_48
    const-string v1, "SFinderLaunchPolicy"

    const-string/jumbo v2, "mStartSFinder: Unknown top activity!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51

    :goto_50
    goto :goto_69

    :catch_51
    move-exception v0

    const-string v1, "SFinderLaunchPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mStartSFinder: Cannot launch activity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_69
    return-void
.end method
