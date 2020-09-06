.class public final synthetic Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$SystemController$qCeLejhl1VXuezlb4Ejmq1rgSIY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/globalactionsdlx/util/SystemController;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/globalactionsdlx/util/SystemController;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$SystemController$qCeLejhl1VXuezlb4Ejmq1rgSIY;->f$0:Lcom/samsung/android/globalactionsdlx/util/SystemController;

    iput-boolean p2, p0, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$SystemController$qCeLejhl1VXuezlb4Ejmq1rgSIY;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$SystemController$qCeLejhl1VXuezlb4Ejmq1rgSIY;->f$0:Lcom/samsung/android/globalactionsdlx/util/SystemController;

    iget-boolean v1, p0, Lcom/samsung/android/globalactionsdlx/util/-$$Lambda$SystemController$qCeLejhl1VXuezlb4Ejmq1rgSIY;->f$1:Z

    invoke-static {v0, v1}, Lcom/samsung/android/globalactionsdlx/util/SystemController;->lambda$doBugReport$0(Lcom/samsung/android/globalactionsdlx/util/SystemController;Z)V

    return-void
.end method
