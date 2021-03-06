.class abstract Lcom/android/server/usb/descriptors/UsbACEndpoint;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbACEndpoint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbACEndpoint"


# instance fields
.field protected final mSubclass:I

.field protected mSubtype:B


# direct methods
.method constructor <init>(IBI)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    iput p3, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubclass:I

    return-void
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v1

    packed-switch v1, :pswitch_data_3a

    const-string v2, "UsbACEndpoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Audio Class Endpoint id:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :pswitch_27
    new-instance v2, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;-><init>(IBI)V

    return-object v2

    :pswitch_2d
    new-instance v2, Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;-><init>(IBI)V

    return-object v2

    :pswitch_33
    new-instance v2, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;

    invoke-direct {v2, p1, p2, v1}, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;-><init>(IBI)V

    return-object v2

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_33
        :pswitch_2d
        :pswitch_27
    .end packed-switch
.end method


# virtual methods
.method public getSubclass()I
    .registers 2

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubclass:I

    return v0
.end method

.method public getSubtype()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubtype:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 3

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mSubtype:B

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACEndpoint;->mLength:I

    return v0
.end method
