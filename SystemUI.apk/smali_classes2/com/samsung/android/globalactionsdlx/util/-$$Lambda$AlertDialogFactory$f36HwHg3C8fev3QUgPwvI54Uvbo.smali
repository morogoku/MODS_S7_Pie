.class public final synthetic Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$AlertDialogFactory$f36HwHg3C8fev3QUgPwvI54Uvbo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$AlertDialogFactory$f36HwHg3C8fev3QUgPwvI54Uvbo;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$AlertDialogFactory$f36HwHg3C8fev3QUgPwvI54Uvbo;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/globalactionsdlx/util/AlertDialogFactory;->lambda$getBikeModeDialog$0(Ljava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
