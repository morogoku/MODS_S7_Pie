.class Lcom/android/server/usb/UsbStringTable$UsbClassMap;
.super Ljava/lang/Object;
.source "UsbStringTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbStringTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbClassMap"
.end annotation


# instance fields
.field private final clasz:I

.field private onlyclasz:Z

.field private final protocol:I

.field private final subclass:I

.field private final szsubtext:Ljava/lang/String;

.field private final sztext:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/usb/UsbStringTable;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbStringTable;III)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    iput p2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    iput p3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    iput p4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    iput p2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    iput p3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    iput p4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    iput-object p5, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbStringTable;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    iput p2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    iput p3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    iput p4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    iput-object p5, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/usb/UsbStringTable;ILjava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->this$0:Lcom/android/server/usb/UsbStringTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    iput p2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    iput p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    iput p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    iput-object p3, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(III)Z
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    if-ne v0, p1, :cond_c

    move v1, v2

    nop

    :cond_c
    return v1

    :cond_d
    iget v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    if-ne v0, p1, :cond_1b

    iget v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    if-ne v0, p2, :cond_1b

    iget v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    if-ne v0, p3, :cond_1b

    move v1, v2

    nop

    :cond_1b
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    instance-of v0, p1, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    move-object v0, p1

    check-cast v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;

    iget-boolean v2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->onlyclasz:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    iget v2, v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    iget v4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    if-ne v2, v4, :cond_15

    move v1, v3

    nop

    :cond_15
    return v1

    :cond_16
    iget v2, v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    iget v4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    if-ne v2, v4, :cond_2a

    iget v2, v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    iget v4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    if-ne v2, v4, :cond_2a

    iget v2, v0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    iget v4, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    if-ne v2, v4, :cond_2a

    move v1, v3

    nop

    :cond_2a
    return v1

    :cond_2b
    return v1
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->clasz:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->subclass:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->protocol:I

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->sztext:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    if-eqz v1, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usb/UsbStringTable$UsbClassMap;->szsubtext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_26
    return-object v0
.end method
