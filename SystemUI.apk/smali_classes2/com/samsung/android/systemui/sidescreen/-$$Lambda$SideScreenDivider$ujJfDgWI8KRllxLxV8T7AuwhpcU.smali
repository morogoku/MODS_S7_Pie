.class public final synthetic Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$ujJfDgWI8KRllxLxV8T7AuwhpcU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$ujJfDgWI8KRllxLxV8T7AuwhpcU;->f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenDivider$ujJfDgWI8KRllxLxV8T7AuwhpcU;->f$0:Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;->lambda$restoreTouchData$1(Lcom/samsung/android/systemui/sidescreen/SideScreenDivider;)V

    return-void
.end method
