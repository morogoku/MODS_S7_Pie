.class Lcom/android/server/am/DisplayChooserDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplayChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DisplayChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/DisplayChooserDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/DisplayChooserDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/DisplayChooserDialog$1;->this$0:Lcom/android/server/am/DisplayChooserDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/am/DisplayChooserDialog$1;->this$0:Lcom/android/server/am/DisplayChooserDialog;

    invoke-virtual {v0}, Lcom/android/server/am/DisplayChooserDialog;->cancel()V

    :cond_11
    return-void
.end method
