<?xml version="1.0" encoding="UTF-8"?>  
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">   
   <xsl:template match="/">   
      <html>   
         <body bgcolor="azure">  
            <h2>Hotel Management Details</h2>   
            <table border="1" width="80%" cellpadding="10" style="font-size: 18px;">   
               <tr bgcolor="#9acd32">   
                  <th>Room Number</th>   
                  <th>Room Type</th>   
                  <th>Occupancy</th>   
                  <th>Facilities</th>   
                  <th>Price</th>      
               </tr>   
               <xsl:for-each select="hotel-management/hotel/room">   
               <xsl:sort select="roomno" />
                  <tr>   
                     <td><xsl:value-of select="roomno"/></td>   
                     <td><xsl:value-of select="roomtype"/></td>   
                     <td><xsl:value-of select="occupancy"/></td>   
                     <td><xsl:value-of select="facilities"/></td>   
                     <td><xsl:value-of select="price"/></td>     
                  </tr>   
               </xsl:for-each>   
            </table>   
         </body>   
      </html>   
   </xsl:template>    
</xsl:stylesheet>
