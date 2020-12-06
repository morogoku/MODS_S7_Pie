.class Lcom/android/settingslib/notification/ZenDurationDialog$1;
.super Ljava/lang/Object;
.source "ZenDurationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/notification/ZenDurationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

.field final synthetic val$zenDuration:I


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/notification/ZenDurationDialog$1;->this$0:Lcom/android/settingslib/notification/ZenDurationDialog;

    iget v1, p0, Lcom/android/settingslib/notification/ZenDurationDialog$1;->val$zenDuration:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/notification/ZenDurationDialog;->updateZenDuration(I)V

    return-void
.end method
