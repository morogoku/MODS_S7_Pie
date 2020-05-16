.class public final synthetic Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$fBP_QHi4rjJxwq-Thxk-CkM9j5A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/power/PowerUI$Receiver;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Z

.field private final synthetic f$3:I

.field private final synthetic f$4:I

.field private final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/PowerUI$Receiver;ZZIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$fBP_QHi4rjJxwq-Thxk-CkM9j5A;->f$0:Lcom/android/systemui/power/PowerUI$Receiver;

    iput-boolean p2, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$fBP_QHi4rjJxwq-Thxk-CkM9j5A;->f$1:Z

    iput-boolean p3, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$fBP_QHi4rjJxwq-Thxk-CkM9j5A;->f$2:Z

    iput p4, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$fBP_QHi4rjJxwq-Thxk-CkM9j5A;->f$3:I

    iput p5, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$fBP_QHi4rjJxwq-Thxk-CkM9j5A;->f$4:I

    iput p6, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$fBP_QHi4rjJxwq-Thxk-CkM9j5A;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$fBP_QHi4rjJxwq-Thxk-CkM9j5A;->f$0:Lcom/android/systemui/power/PowerUI$Receiver;

    iget-boolean v1, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$fBP_QHi4rjJxwq-Thxk-CkM9j5A;->f$1:Z

    iget-boolean v2, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$fBP_QHi4rjJxwq-Thxk-CkM9j5A;->f$2:Z

    iget v3, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$fBP_QHi4rjJxwq-Thxk-CkM9j5A;->f$3:I

    iget v4, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$fBP_QHi4rjJxwq-Thxk-CkM9j5A;->f$4:I

    iget v5, p0, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$fBP_QHi4rjJxwq-Thxk-CkM9j5A;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/power/PowerUI$Receiver;->lambda$onReceive$0(Lcom/android/systemui/power/PowerUI$Receiver;ZZIII)V

    return-void
.end method
