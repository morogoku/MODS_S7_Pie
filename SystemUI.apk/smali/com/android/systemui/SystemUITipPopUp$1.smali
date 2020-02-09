.class Lcom/android/systemui/SystemUITipPopUp$1;
.super Ljava/lang/Object;
.source "SystemUITipPopUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUITipPopUp;->setTipPopUp(IIILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SystemUITipPopUp;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUITipPopUp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SystemUITipPopUp$1;->this$0:Lcom/android/systemui/SystemUITipPopUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp$1;->this$0:Lcom/android/systemui/SystemUITipPopUp;

    invoke-virtual {v0}, Lcom/android/systemui/SystemUITipPopUp;->dismissTipPopUp()V

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp$1;->this$0:Lcom/android/systemui/SystemUITipPopUp;

    invoke-static {v0}, Lcom/android/systemui/SystemUITipPopUp;->access$000(Lcom/android/systemui/SystemUITipPopUp;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SystemUITipPopUp$1;->this$0:Lcom/android/systemui/SystemUITipPopUp;

    invoke-static {v0}, Lcom/android/systemui/SystemUITipPopUp;->access$100(Lcom/android/systemui/SystemUITipPopUp;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SystemUITipPopUp$1;->this$0:Lcom/android/systemui/SystemUITipPopUp;

    invoke-static {v1}, Lcom/android/systemui/SystemUITipPopUp;->access$000(Lcom/android/systemui/SystemUITipPopUp;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
