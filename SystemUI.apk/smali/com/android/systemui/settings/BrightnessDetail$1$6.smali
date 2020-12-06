.class Lcom/android/systemui/settings/BrightnessDetail$1$6;
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

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$6;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$6;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v1, v1, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail;->access$700(Lcom/android/systemui/settings/BrightnessDetail;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$6;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v1, v1, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail;->access$800(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;->setBrightnessOnTop(Z)V

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$6;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v1, v1, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail;->access$1300(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$6;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    const-string v2, "4007"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/settings/BrightnessDetail$1;->access$900(Lcom/android/systemui/settings/BrightnessDetail$1;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail$1$6;->this$1:Lcom/android/systemui/settings/BrightnessDetail$1;

    iget-object v1, v1, Lcom/android/systemui/settings/BrightnessDetail$1;->this$0:Lcom/android/systemui/settings/BrightnessDetail;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessDetail;->access$1300(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/widget/Switch;

    move-result-object v1

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    return-void
.end method
