.class Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenPinningRequestDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/ScreenPinningRequestDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/ScreenPinningRequestDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/ScreenPinningRequestDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;->this$0:Lcom/android/systemui/recents/ScreenPinningRequestDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "displayId"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;->this$0:Lcom/android/systemui/recents/ScreenPinningRequestDialog;

    invoke-static {v1}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->access$000(Lcom/android/systemui/recents/ScreenPinningRequestDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;->this$0:Lcom/android/systemui/recents/ScreenPinningRequestDialog;

    invoke-static {v1}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->access$000(Lcom/android/systemui/recents/ScreenPinningRequestDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/ScreenPinningRequestDialog$1;->this$0:Lcom/android/systemui/recents/ScreenPinningRequestDialog;

    invoke-virtual {v1}, Lcom/android/systemui/recents/ScreenPinningRequestDialog;->clearPrompt()V

    :cond_0
    return-void
.end method
