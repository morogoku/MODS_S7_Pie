.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSTileHost$3RwrnCxkSgWtCTzoBzjFvmtqHIc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/QSTileHost;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$3RwrnCxkSgWtCTzoBzjFvmtqHIc;->f$0:Lcom/android/systemui/qs/QSTileHost;

    iput-object p2, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$3RwrnCxkSgWtCTzoBzjFvmtqHIc;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$3RwrnCxkSgWtCTzoBzjFvmtqHIc;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$3RwrnCxkSgWtCTzoBzjFvmtqHIc;->f$0:Lcom/android/systemui/qs/QSTileHost;

    iget-object v1, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$3RwrnCxkSgWtCTzoBzjFvmtqHIc;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$3RwrnCxkSgWtCTzoBzjFvmtqHIc;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/QSTileHost;->lambda$sendTileStatusLog$6(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;I)V

    return-void
.end method
