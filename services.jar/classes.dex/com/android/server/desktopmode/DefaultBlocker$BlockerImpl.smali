.class Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;
.super Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;
.source "DefaultBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DefaultBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlockerImpl"
.end annotation


# instance fields
.field reasonCode:I

.field final synthetic this$0:Lcom/android/server/desktopmode/DefaultBlocker;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DefaultBlocker;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    invoke-direct {p0}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker$Stub;-><init>()V

    iput p2, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    return-void
.end method


# virtual methods
.method public onBlocked()Ljava/lang/String;
    .registers 7

    iget v0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->reasonCode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6a

    const/16 v1, 0x9

    if-eq v0, v1, :cond_49

    const v1, 0x10402b2

    packed-switch v0, :pswitch_data_78

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    # getter for: Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/desktopmode/DefaultBlocker;->access$000(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1a
    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    # getter for: Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/desktopmode/DefaultBlocker;->access$000(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.desktopmode.action.UPDATE_DATABASE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    # getter for: Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/desktopmode/DefaultBlocker;->access$000(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3b
    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    # getter for: Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/desktopmode/DefaultBlocker;->access$000(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_49
    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    # getter for: Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/desktopmode/DefaultBlocker;->access$000(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402b0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    # getter for: Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/desktopmode/DefaultBlocker;->access$000(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10402af

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6a
    iget-object v0, p0, Lcom/android/server/desktopmode/DefaultBlocker$BlockerImpl;->this$0:Lcom/android/server/desktopmode/DefaultBlocker;

    # getter for: Lcom/android/server/desktopmode/DefaultBlocker;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/desktopmode/DefaultBlocker;->access$000(Lcom/android/server/desktopmode/DefaultBlocker;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402ad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_78
    .packed-switch 0x6
        :pswitch_3b
        :pswitch_1a
    .end packed-switch
.end method
