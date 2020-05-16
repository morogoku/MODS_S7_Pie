.class public final synthetic Lcom/android/systemui/-$$Lambda$DebugUiOffloadThread$5N3-ZlEkmBUcmN_YWQLS05yh9IY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/DebugUiOffloadThread$Callback;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/DebugUiOffloadThread;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/DebugUiOffloadThread;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$DebugUiOffloadThread$5N3-ZlEkmBUcmN_YWQLS05yh9IY;->f$0:Lcom/android/systemui/DebugUiOffloadThread;

    return-void
.end method


# virtual methods
.method public final taskEnded(Ljava/lang/String;JJJ)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$DebugUiOffloadThread$5N3-ZlEkmBUcmN_YWQLS05yh9IY;->f$0:Lcom/android/systemui/DebugUiOffloadThread;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/DebugUiOffloadThread;->lambda$5N3-ZlEkmBUcmN_YWQLS05yh9IY(Lcom/android/systemui/DebugUiOffloadThread;Ljava/lang/String;JJJ)V

    return-void
.end method
