.class Lcom/android/server/StorageManagerService$2$1;
.super Ljava/lang/Object;
.source "StorageManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/StorageManagerService$2;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService$2;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/StorageManagerService$2$1;->this$1:Lcom/android/server/StorageManagerService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_5
    return-void
.end method
