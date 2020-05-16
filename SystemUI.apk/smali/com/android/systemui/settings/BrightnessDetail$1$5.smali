.class Lcom/android/systemui/settings/BrightnessDetail$1$5;
.super Ljava/lang/Object;
.source "BrightnessDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/BrightnessDetail$1;->initDetailViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/settings/BrightnessDetail$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessDetail$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v0, v0, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessDetail;->access$1300(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v2, v2, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessDetail;->access$700(Lcom/android/systemui/settings/BrightnessDetail;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v2, v2, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessDetail;->access$800(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;->setBrightnessOnTop(Z)V

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v2, v2, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessDetail;->access$1300(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail$1$5;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    const-string v3, "4007"

    invoke-static {v2, v3, v1}, Lcom/android/systemui/settings/BrightnessDetail$1;->access$900(Lcom/android/systemui/settings/BrightnessDetail$1;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
