.class public final synthetic Lcom/android/server/desktopmode/-$$Lambda$ToastManager$GdZ1pKqiuPC2L9_QITC3N18J0so;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$$Lambda$ToastManager$GdZ1pKqiuPC2L9_QITC3N18J0so;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/desktopmode/-$$Lambda$ToastManager$GdZ1pKqiuPC2L9_QITC3N18J0so;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/desktopmode/-$$Lambda$ToastManager$GdZ1pKqiuPC2L9_QITC3N18J0so;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/desktopmode/-$$Lambda$ToastManager$GdZ1pKqiuPC2L9_QITC3N18J0so;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/desktopmode/-$$Lambda$ToastManager$GdZ1pKqiuPC2L9_QITC3N18J0so;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/desktopmode/-$$Lambda$ToastManager$GdZ1pKqiuPC2L9_QITC3N18J0so;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/ToastManager;->lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
