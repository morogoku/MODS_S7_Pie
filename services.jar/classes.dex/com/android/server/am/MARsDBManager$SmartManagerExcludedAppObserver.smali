.class Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;
.super Landroid/database/ContentObserver;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartManagerExcludedAppObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v0, v0, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->DEBUG_ENG:Z

    if-eqz v0, :cond_10

    const-string v0, "MARsDBManager"

    const-string/jumbo v1, "onChange - mSmartManagerExcludedAppObserver!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/android/server/am/MARsDBManager$SmartManagerExcludedAppObserver;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->getExcludedAppDBValues()V
    invoke-static {v0}, Lcom/android/server/am/MARsDBManager;->access$1100(Lcom/android/server/am/MARsDBManager;)V

    return-void
.end method
