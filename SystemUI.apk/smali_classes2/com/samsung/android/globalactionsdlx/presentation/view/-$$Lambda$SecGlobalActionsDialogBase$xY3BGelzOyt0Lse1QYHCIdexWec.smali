.class public final synthetic Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$SecGlobalActionsDialogBase$xY3BGelzOyt0Lse1QYHCIdexWec;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$SecGlobalActionsDialogBase$xY3BGelzOyt0Lse1QYHCIdexWec;->f$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/presentation/view/-$$Lambda$SecGlobalActionsDialogBase$xY3BGelzOyt0Lse1QYHCIdexWec;->f$0:Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;->lambda$showDialog$1(Lcom/samsung/android/globalactionsdlx/presentation/view/SecGlobalActionsDialogBase;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
