.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSDetailItems$13kcDZV6WGfnPga2vTxAs6_XQgk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/QSDetailItems;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSDetailItems;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$QSDetailItems$13kcDZV6WGfnPga2vTxAs6_XQgk;->f$0:Lcom/android/systemui/qs/QSDetailItems;

    iput p2, p0, Lcom/android/systemui/qs/-$$Lambda$QSDetailItems$13kcDZV6WGfnPga2vTxAs6_XQgk;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/-$$Lambda$QSDetailItems$13kcDZV6WGfnPga2vTxAs6_XQgk;->f$0:Lcom/android/systemui/qs/QSDetailItems;

    iget v1, p0, Lcom/android/systemui/qs/-$$Lambda$QSDetailItems$13kcDZV6WGfnPga2vTxAs6_XQgk;->f$1:I

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->lambda$setEmptyState$1(Lcom/android/systemui/qs/QSDetailItems;I)V

    return-void
.end method
