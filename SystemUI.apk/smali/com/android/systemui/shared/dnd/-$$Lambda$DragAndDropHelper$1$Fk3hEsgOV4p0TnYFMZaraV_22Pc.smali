.class public final synthetic Lcom/android/systemui/shared/dnd/-$$Lambda$DragAndDropHelper$1$Fk3hEsgOV4p0TnYFMZaraV_22Pc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/dnd/-$$Lambda$DragAndDropHelper$1$Fk3hEsgOV4p0TnYFMZaraV_22Pc;->f$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;

    iput p2, p0, Lcom/android/systemui/shared/dnd/-$$Lambda$DragAndDropHelper$1$Fk3hEsgOV4p0TnYFMZaraV_22Pc;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/dnd/-$$Lambda$DragAndDropHelper$1$Fk3hEsgOV4p0TnYFMZaraV_22Pc;->f$0:Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;

    iget v1, p0, Lcom/android/systemui/shared/dnd/-$$Lambda$DragAndDropHelper$1$Fk3hEsgOV4p0TnYFMZaraV_22Pc;->f$1:I

    invoke-static {v0, v1}, Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;->lambda$onDragEnd$1(Lcom/android/systemui/shared/dnd/DragAndDropHelper$1;I)V

    return-void
.end method
