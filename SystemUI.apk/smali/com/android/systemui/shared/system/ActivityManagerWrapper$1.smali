.class Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "ActivityManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/ActivityManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$assistDataReceiver:Lcom/android/systemui/shared/system/AssistDataReceiver;


# virtual methods
.method public onHandleAssistData(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;->val$assistDataReceiver:Lcom/android/systemui/shared/system/AssistDataReceiver;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/AssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V

    return-void
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/system/ActivityManagerWrapper$1;->val$assistDataReceiver:Lcom/android/systemui/shared/system/AssistDataReceiver;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/AssistDataReceiver;->onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V

    return-void
.end method
